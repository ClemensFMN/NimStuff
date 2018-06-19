
# address of porta on ATMEGA32
var PORTA = cast[ptr int](0x1B)

PORTA[] = 0x0F

# either so (this requires an avr-gcc as specified in nim.cfg)
# nim c --os:standalone io_fun_direct.nim
# or so which creates only the c file
# nim cc -c --os:standalone io_fun_direct.nim



