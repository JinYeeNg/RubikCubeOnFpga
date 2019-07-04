# Servo Shield Example.
#
# This example demonstrates the servo shield. Please follow these steps:
#
#   1. Connect a servo to any PWM output.
#   2. Connect a 3.7v battery (or 5V source) to VIN and GND.
#   3. Copy pca9685.py and servo.py to OpenMV and reset it.
#   4. Connect and run this script in the IDE.

import time
from servo import Servos
from machine import I2C, Pin

i2c = I2C(sda=Pin('P5'), scl=Pin('P4'))
servo = Servos(i2c, address=0x40, freq=50, min_us=650, max_us=2800, degrees=180)
print("Doing it")
servo.position(0, 140)
servo.position(1,170)
servo.position(2, 120)
servo.position(3, 90)
servo.position(4, 120)
servo.position(5, 0)
servo.position(6, 120)
servo.position(7, 180)
time.sleep(1000)
i=0
j=1
while True:
    servo.position(i, 0)
    time.sleep(300)
    servo.position(i, 90)
    time.sleep(300)
 #   for i in range(0, 8):
 #       servo.position(i, 0)
 #       print("loop",i)
 #   time.sleep(500)
 #   for i in range(0, 8):
 #       servo.position(i, 180)
 #   time.sleep(500)
