{.compile: "led.c".}
proc led_setup(): void {.importc.}
proc led_on(): void {.importc.}
proc led_off(): void {.importc.}
proc delay(ms: int): void {.importc.}

# compile with
# nim c --os:standalone blink.nim 

when isMainModule:
  led_setup();
  while true:
    led_on();
    delay(1000);
    led_off();
    delay(1000);