import sugar

# simple function taking a seq of ints and calculating its sum
proc mySum(vec: openArray[int]):int =
  var sum:int
  for e in vec:
    sum = sum + e
  return sum

# strongly inspired by https://github.com/nim-lang/Nim/blob/version-1-0/lib/pure/collections/sequtils.nim#L293
proc myMap(vec: openArray[int], op: proc(x: int): int): seq[int] =
  var res = newSeq[int](vec.len)
  for i in 0..<vec.len:
    res[i] = op(vec[i])
  return res

# start of the "main" program....
for i in 0..10:
  echo i

echo("Sum = ", mySum(@[1,2,3,4,5]))

echo(myMap(@[1,2,3,4,5], proc(x:int):int = x+1))
# sugar package defines macro => above can therefore be simplified to:
echo(myMap(@[1,2,3,4,5], x => x+1))
