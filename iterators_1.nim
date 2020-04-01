import sequtils

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

iterator myfib2:int =
  var an = 0
  var anp1 = 1
  while(true):
    yield an
    swap an, anp1
    anp1 = an

# in order to use this last iterator, we need takeWhile or someting similar 
# -> this seems to be NOT part of the stdlib?
# see github: nim-projecteuler lib_euler_functional.nim
#let fib10 = myfib2.takeWhile(x => x < 100)
#for e in fib10:
#  echo e

#let s2 = myfib2.filter(x=> x<100)
#echo s2
