import sequtils

# simple function taking a seq of ints and calculating its sum
proc mySum(vec: seq[int]):int =
  var sum:int
  for e in vec:
    sum = sum + e
  return sum

# quick sort - naive recursive implementation
proc myQSort(vec: seq[int]):seq[int] = 
  if len(vec) > 0:
    let head = vec[0] # choosing the list head as pivot
    let smller = vec.filter do (x:int)->bool: x < head # find everything smaller
    let lrgr = vec.filter do(x:int)->bool: x > head # and bigger than the pivot
    let nw1 = myQSort(smller) # sort each of these parts
    let nw2 = myQSort(lrgr)
    return concat(nw1, @[head], nw2) # and stitch the result together
  else:
    return @[] # if called with an empty list, return one (this is the recursion start)

# start of the "main" program....
for i in 0..10:
  echo i

echo(mySum(@[1,2,3,4,5]))

let a1 = @[1,5,2,-3,8,0]
echo myQSort(a1)


