type
  Person = object # of RootObj
    name:string
    age:int


var p = Person(name:"Clemens", age:35)
echo p
echo p.name


type
  MyObj = ref object
    name: string
    age:int


proc `$`(x:MyObj):string =
  "MyObj:" & x.name

var mo = MyObj(name:"Susi", age:100)
# this requires the proc `$` for printing
echo mo
echo mo.name
