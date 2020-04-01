import json

# parse json
let jsonNode = parseJson("""
   {
     "person": {
       "name": "Nimmer",
       "age": 21
     },
     "list": [1, 2, 3, 4]
   }
""")

type
  Person = object
    name: string
    age: int
  
  Data = object
    person: Person
    list: seq[int]

  TestD = object
    name: string
    lst: seq[int]

# and unmarshal the parsed json into an object
var data = to(jsonNode, Data)
echo data.person.name
echo data.person.age
echo data.list

# marshaling an object into json
echo %*(data)


var p1 = Person(name:"Clemens", age:45)
echo %*(p1)
# the object construction like thi does NOT work...
var o1 = Data(person:p1, list:@[1,2,5,6])
# this does NOT work???
# echo %*(o1) 

#var t1 = TestD(name:"kdfjdlkfj", lst:@[1,2,5,6])
#echo %*(t1)
