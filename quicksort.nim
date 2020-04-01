import sequtils

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

## based on https://rosettacode.org/wiki/Sorting_algorithms/Quicksort
proc quickSort[T](a: var openarray[T], inl = 0, inr = -1) =
  var r = if inr >= 0: inr else: a.high
  var l = inl
  let n = r - l + 1
  if n < 2: return
  let p = a[l + 3 * n div 4]
  while l <= r:
    if a[l] < p:
      inc l
      continue
    if a[r] > p:
      dec r
      continue
    if l <= r:
      swap a[l], a[r]
      inc l
      dec r
  quickSort(a, inl, r)
  quickSort(a, l, inr)

let a1 = @[1,5,2,-3,8,0]
echo "myQSort: ", myQSort(a1)

var a2 = @[1,5,2,-3,8,0]
quickSort(a2)
echo "quickSort: ", a2
