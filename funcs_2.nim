import future

proc isValid1(x:int, validator: proc(x:int):bool) =
  if validator(x):
    echo "is valid ", x
  else:
    echo "is NOT valid ", x


proc isValid2(x:int, validator: (x:int) -> bool) =
  if validator(x):
    echo "is valid ", x
  else:
    echo "is NOT valid ", x



proc v1(x:int):bool = x<3


isValid1(0, v1)
isValid1(10, v1)

isValid2(0, v1)
isValid2(10, v1)



