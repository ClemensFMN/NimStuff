# create an iterator
iterator myiter(stop, incrmt:int):int = 
  var res = 0 #with some internal state
  while res <= stop:
    yield res # yielding a value
    res = res + incrmt # and updating the state


for i in myiter(10,2):
  echo i

# the same thing for fibonacci numbers
iterator myfib(stp: int):int =
  var an = 0 # two numbers as "state"
  var anp1 = 1
  while anp1 <= stp:
    var temp = an + anp1 # state update
    an = anp1
    anp1 = temp
    yield an # and yielding a fib number

for i in myfib(100):
  echo i


