# defne a Fibonacci type
type
  FibRange = object
    maxVal: int # which just holds the max value...

# an iterator creating Fib numbers up to a max values
iterator items(f: FibRange): int =
  var an = 0
  var anp1 = 1
  while anp1 < f.maxVal:
    var temp = an + anp1
    an = anp1
    anp1 = temp
    yield an

# and another iterator which also returns an index
# see how the tuple (of two ints) for the return type is specified
iterator pairs(f: FibRange): (int, int) =
  var an = 0
  var anp1 = 1
  var i = 0
  while anp1 < f.maxVal:
    var temp = an + anp1
    an = anp1
    anp1 = temp
    yield (i, an)
    i = i+1
  
    
for v in FibRange(maxVal:100):
  echo v

for i,v in FibRange(maxVal:100):
  echo i, "....", v
