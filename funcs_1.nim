proc f1(a,b:int):int =
  a + b


echo f1(4,5)
# uniform call syntax -> this works as well
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

# overloading is possible
proc mkString(x:int):string =
  "Int is: " & $x

proc mkString(x:string):string = 
  "String is: " & x

echo mkString(4)
echo mkString("Hello")
