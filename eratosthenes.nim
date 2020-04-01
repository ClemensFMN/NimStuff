from math import sqrt
 
iterator primesUpto(limit: int): int =
  let sqrtLimit = int(sqrt(float64(limit)))
  var composites = newSeq[bool](limit + 1)
  composites[0] = true
  composites[1] = true
  for n in 2 .. sqrtLimit: # cull to square root of limit
    if not composites[n]: # if prime -> cull its composites
      for i in countup(n *% n, limit + 1, n): # start at ``n`` squared
        composites[i] = true
  for n in 2 .. limit: # separate iteration over results
    if not composites[n]:
      yield n
 
echo("Primes are:")
for x in primesUpto(200):
   echo(x)
