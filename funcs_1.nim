# a simple function
proc f1(a,b:int):int =
  a + b

# calling it like "always"
echo f1(4,5)
# or using uniform call syntax
echo 3.f1(8)

# define a binary operator
proc `%&`(a,b: int):int = 
  a + b

# which allows use like this...
echo 4 %& 8

# and an unary operator
proc `%&`(x:int):int = 
  x+1

echo (%& 5)

# a recursive function
proc myfac(n:int):int = 
  case n
  of 1: return 1
  else: return n*myfac(n-1)

echo myfac(4)


# function overloading is possible
proc mkString(x:int):string =
  "Int is: " & $x

proc mkString(x:string):string = 
  "String is: " & x

echo mkString(4)
echo mkString("Hello")

# functions can return tuples
proc f10(x, y:int):(int,int) = 
  return (x+y, x*y)


echo f10(4,5)
# using unpacking 
let (res1, res2) = f10(4,5)
echo res1, "...", res2

# passing a tuple to a function
proc f11(x:(int,int)):int =
  let (i1,i2) = x
  return(i1+i2)

echo f11((3,4))

# we can also have named arguments and provide default values
proc f20(x=0, y:int):int = 
  x+y

echo f20(y=3), "...", f20(x=1,y=3)
