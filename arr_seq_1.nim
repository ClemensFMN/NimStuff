import future
import sequtils

# a simple array
var arr = [1,2,3,4,5]

echo arr[0]

for e in arr:
  echo e

for ind,e in arr:
  echo "pos: ", ind, " -> val: ", e


var sq = @[1,2,3,4,5]

sq.add(4)

for e in sq:
  echo e

# we can use filter
# that's option 1 of the "normal" way to do it
let sq1 = filter(sq) do (x:int) -> bool : x < 3
echo sq1

# that's option 2 of the "normal" way to do it
let sq2 = filter(sq, proc(x:int):bool = x<3)
echo sq2

# this variant requires future as well, but contains types...
echo filter(sq, (x:int) -> bool  => x<3)
echo sq.filter((x:int) -> bool  => x<3)
# the nice => syntax comes from the future module imported 
# on top
echo sq.filter(x=>x<3)

