import json


type
  Message* = object
    username*: string
    message*: string



var user = "Clemens"
var msg = "Hello world"


var json_s1 = $(%{"username": %user, "message": %msg})

echo json_s1

var prsd = parseJson(json_s1)

echo prsd
echo prsd["username"]
echo prsd["message"]
