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

L_ARM = 0
L_GRIP = 1
D_ARM = 2
D_GRIP = 3
R_ARM = 4
R_GRIP = 5
U_ARM = 6
U_GRIP = 7

def gripper_U_retract ():
    servo.position(U_ARM, 120)
    time.sleep(500)

def gripper_D_retract ():
    servo.position(D_ARM, 120)
    time.sleep(500)

def gripper_L_retract ():
    servo.position(L_ARM, 140)
    time.sleep(500)

def gripper_R_retract ():
    servo.position(R_ARM, 120)
    time.sleep(500)

def gripper_U_N ():
    servo.position(U_GRIP, 0)
    time.sleep(500)
    servo.position(U_GRIP, 95)
    time.sleep(500)

def gripper_D_N ():
    servo.position(D_GRIP, 0)
    time.sleep(500)
    servo.position(D_GRIP, 90)
    time.sleep(500)

def gripper_L_P ():
    servo.position(L_GRIP, 90)
    time.sleep(500)
    servo.position(L_GRIP, 0)

def gripper_R_P ():
    servo.position(R_GRIP, 90)
    time.sleep(500)
    servo.position(R_GRIP, 0)
    time.sleep(500)

def gripper_reset ():
    gripper_U_retract()
    gripper_D_retract()
    gripper_L_retract()
    gripper_R_retract()
    gripper_U_N()
    gripper_D_N()
    gripper_L_P()
    gripper_R_P()

def gripper_vhold ():
    servo.position(D_ARM, 35)
    servo.position(D_GRIP, 90)
    servo.position(U_ARM, 25)
    servo.position(U_GRIP, 95)

def gripper_hhold ():
    servo.position(L_ARM, 50)
    servo.position(L_GRIP, 0)
    servo.position(R_ARM, 30)
    servo.position(R_GRIP, 0)

def gripper_U ():
    servo.position(U_GRIP, 95)
    time.sleep(2000)
    servo.position(U_GRIP, 180)
    time.sleep(2000)
    servo.position(U_GRIP, 0)
    time.sleep(2000)
    servo.position(U_GRIP, 100)
    time.sleep(1000)

def gripper_D ():
    servo.position(D_GRIP, 90)
    time.sleep(1000)
    servo.position(D_GRIP, 180)
    time.sleep(1000)
    servo.position(D_GRIP, 90)
    time.sleep(1000)
    servo.position(D_GRIP, 0)
    time.sleep(1000)
    servo.position(D_GRIP, 100)
    time.sleep(1000)

gripper_reset()
print('\n\n****  Place the Rubik\'s Cube on RuBot  ****\n')
time.sleep(5000)
gripper_vhold()
time.sleep(1000)
gripper_hhold()
time.sleep(1000)
gripper_U()
gripper_D()
gripper_L_retract()
gripper_R_retract()


print('Done')
