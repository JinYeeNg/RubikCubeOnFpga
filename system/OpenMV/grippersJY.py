# Class grippers
#
# For controlling the four gripper arms on the Rubik's Cube solver robot

import time
from servo import Servos
from machine import I2C, Pin
from collections import namedtuple

# define constants
# servo motor channels
L_ARM = 0
L_GRIP = 1
D_ARM = 2
D_GRIP = 3
R_ARM = 4
R_GRIP = 5
U_ARM = 6
U_GRIP = 7
# arm states
OPENED = 0
CLOSED = 1
# arm indexes
LEFT = 0
RIGHT = 1
UP = 2
DOWN = 3

class Grippers(object):

    def __init__(self):
        i2c = I2C(sda=Pin('P5'), scl=Pin('P4'))
        self.servo = Servos(i2c, address=0x40, freq=50, min_us=650, max_us=2800, degrees=180)
        # self.arm_states = [OPENED, OPENED, OPENED, OPENED]
        # self.gripper_states = [0, 0, 0, 0]

    def gripper_U_open (self):
        self.servo.position(U_ARM, 120)
        # self.arm_states[UP] = OPENED

    def gripper_D_open (self):
        self.servo.position(D_ARM, 120)
        # self.arm_states[DOWN] = OPENED

    def gripper_L_open (self):
        self.servo.position(L_ARM, 140)
        # self.arm_states[LEFT] = OPENED

    def gripper_R_open (self):
        self.servo.position(R_ARM, 120)
        # self.arm_states[RIGHT] = OPENED

    def gripper_UD_open (self):
        self.gripper_U_open()
        self.gripper_D_open()

    def gripper_LR_open (self):
        self.gripper_L_open()
        self.gripper_R_open()

    def gripper_U_close (self):
        self.servo.position(U_ARM, 20)
        # self.arm_states[UP] = CLOSED

    def gripper_D_close (self):
        self.servo.position(D_ARM, 30)
        # self.arm_states[DOWN] = CLOSED

    def gripper_L_close (self):
        self.servo.position(L_ARM, 40)
        # self.arm_states[LEFT] = CLOSED

    def gripper_R_close (self):
        self.servo.position(R_ARM, 40)
        # self.arm_states[RIGHT] = CLOSED

    def gripper_UD_close (self):
        self.gripper_U_close()
        self.gripper_D_close()

    def gripper_LR_close (self):
        self.gripper_L_close()
        self.gripper_R_close()

    def gripper_U0 (self):
        # self.servo.position(U_GRIP, 10)
        self.servo.position(U_GRIP, 0)
        # self.gripper_states[UP] = 0

    def gripper_U90 (self):
        # self.servo.position(U_GRIP, 95)
        self.servo.position(U_GRIP, 90)
        # self.gripper_states[UP] = 90

    def gripper_U180 (self):
        self.servo.position(U_GRIP, 180)
        # self.gripper_states[UP] = 180

    def gripper_D0 (self):
        self.servo.position(D_GRIP, 0)
        # self.gripper_states[DOWN] = 0

    def gripper_D90 (self):
        self.servo.position(D_GRIP, 90)
        # self.gripper_states[DOWN] = 90

    def gripper_D180 (self):
        self.servo.position(D_GRIP, 180)
        # self.gripper_states[DOWN] = 180

    def gripper_L0 (self):
        self.servo.position(L_GRIP, 0)
        # self.gripper_states[LEFT] = 0

    def gripper_L90 (self):
        self.servo.position(L_GRIP, 90)
        # self.gripper_states[LEFT] = 90

    def gripper_L180 (self):
        self.servo.position(L_GRIP, 180)
        # self.gripper_states[LEFT] = 180

    def gripper_R0 (self):
        self.servo.position(R_GRIP, 0)
        # self.gripper_states[RIGHT] = 0

    def gripper_R90 (self):
        self.servo.position(R_GRIP, 90)
        # self.gripper_states[RIGHT] = 90

    def gripper_R180 (self):
        self.servo.position(R_GRIP, 180)
        # self.gripper_states[RIGHT] = 180

    def gripper_reset(self):
        self.gripper_UD_open()
        self.gripper_LR_open()
        time.sleep(500)
        self.gripper_U90()
        self.gripper_D90()
        self.gripper_L0()
        self.gripper_R180()

    def Up(self):
        # print("Up")
        self.gripper_U90() ##to change
        time.sleep(1000)
        self.gripper_U_open()
        time.sleep(1000)
        self.gripper_U0()
        time.sleep(1000)
        self.gripper_U_close()
        time.sleep(1000)

    def Up2(self):
        # print("Up2")
        self.gripper_U180() ##to change
        time.sleep(1000)
        self.gripper_U_open()
        time.sleep(1000)
        self.gripper_U0()
        time.sleep(1000)
        self.gripper_U_close()
        time.sleep(1000)

    def Upprime(self):
        # print("Upprime")
        self.gripper_U_open()
        time.sleep(1000)
        self.gripper_U90() ##to change
        time.sleep(1000)
        self.gripper_U_close()
        time.sleep(1000)
        self.gripper_U0()
        time.sleep(1000)

    def Down(self):
        # print("Down")
        self.gripper_D90() ##to change
        time.sleep(1000)
        self.gripper_D_open()
        time.sleep(1000)
        self.gripper_D0()
        time.sleep(1000)
        self.gripper_D_close()
        time.sleep(1000)

    def Down2(self):
        # print("Down2")
        self.gripper_D180() ##to change
        time.sleep(1000)
        self.gripper_D_open()
        time.sleep(1000)
        self.gripper_D0()
        time.sleep(1000)
        self.gripper_D_close()
        time.sleep(1000)

    def Downprime(self):
        # print("Downprime")
        self.gripper_D_open()
        time.sleep(1000)
        self.gripper_D90() ##to change
        time.sleep(1000)
        self.gripper_D_close()
        time.sleep(1000)
        self.gripper_D0()
        time.sleep(1000)


    def Right(self):
        # print("Right")
        self.gripper_R90() ##to change
        time.sleep(1000)
        self.gripper_R_open()
        time.sleep(1000)
        self.gripper_R0()
        time.sleep(1000)
        self.gripper_R_close()
        self.servo.position(R_ARM, 40)
        time.sleep(1000)

    def Right2(self):
        # print("Right2")
        self.gripper_R180() ##to change
        self.servo.position(R_GRIP, 180)
        time.sleep(1000)
        self.gripper_R_open()
        time.sleep(1000)
        self.gripper_R0()
        time.sleep(1000)
        self.gripper_R_close()
        self.servo.position(R_ARM, 40)
        time.sleep(1000)

    def Rightprime(self):
        # print("Rightprime")
        self.gripper_R_open()
        time.sleep(1000)
        self.gripper_R90() ##to change
        time.sleep(1000)
        self.gripper_R_close()
        self.servo.position(R_ARM, 40)
        time.sleep(1000)
        self.gripper_R0()
        time.sleep(1000)

    def Left(self):
        # print("Left")
        self.gripper_L90() ##to change
        time.sleep(1000)
        self.gripper_L_open()
        time.sleep(1000)
        self.gripper_L0()
        self.servo.position(L_GRIP, 0)
        time.sleep(1000)
        self.gripper_L_close()
        self.servo.position(L_ARM, 40)
        time.sleep(1000)

    def Left2(self):
        # print("Left2")
        self.gripper_L180() ##to change
        time.sleep(1000)
        self.gripper_L_open()
        time.sleep(1000)
        self.gripper_L0()
        self.servo.position(L_GRIP, 0)
        time.sleep(1000)
        self.gripper_L_close()
        self.servo.position(L_ARM, 40)
        time.sleep(1000)

    def Leftprime(self):
        # print("Leftprime")
        self.gripper_L_open()
        time.sleep(1000)
        self.gripper_L90() ##to change
        time.sleep(1000)
        self.gripper_L_close()
        self.servo.position(L_ARM, 40)
        time.sleep(1000)
        self.gripper_L0()
        self.servo.position(L_GRIP, 0)
        time.sleep(1000)
    def turn(self):
        self.gripper_U_open()
        time.sleep(1000)
        self.gripper_U180()
        time.sleep(1000)
        self.gripper_U_close()
        time.sleep(1000)

        self.gripper_UD_open()
        time.sleep(1000)
        self.gripper_U90()
        self.gripper_D90()
        time.sleep(1000)
        self.gripper_D_close()
        time.sleep(1000)
        self.gripper_LR_open()
        time.sleep(1000)
        #gripper_U_open()
        #time.sleep(1000)
        self.gripper_U0()
        self.gripper_D180()
        time.sleep(1000)
        self.gripper_U_close()
        time.sleep(1000)
        self.gripper_LR_close()
        self.servo.position(L_ARM, 40)
        self.servo.position(R_ARM, 40)
        time.sleep(1000)

    def turnBack(self):
        self.gripper_LR_open()
        time.sleep(1000)
        self.gripper_U_open()
        time.sleep(1000)
        self.gripper_U90()
        self.gripper_D90()
        time.sleep(1000)
        self.gripper_U_close()
        time.sleep(1000)
        self.gripper_LR_close()
        self.servo.position(L_ARM, 40)
        self.servo.position(R_ARM, 40)
        time.sleep(1000)
        self.gripper_UD_open()
        time.sleep(1000)
        #gripper_U0()
        self.gripper_U180()
        self.gripper_D0()
        time.sleep(1000)
        self.gripper_UD_close()
        time.sleep(1000)


        self.gripper_U_open()
        time.sleep(1000)
        self.gripper_U0()
        time.sleep(1000)
        self.gripper_U_close()
        time.sleep(1000)
    def Front(self):
        # print("Front2")
        self.turn()
        self.Right()
        self.turnBack()

    def Front2(self):
        # print("Front2")
        self.turn()
        self.Right2()
        self.turnBack()

    def Frontprime(self):
        # print("Frontprime")
        self.turn()
        self.Rightprime()
        self.turnBack()

    def Back(self):
        # print("Back")
        self.turn()
        self.Left()
        self.turnBack()

    def Back2(self):
        # print("Back2")
        self.turn()
        self.Left2()
        self.turnBack()

    def Backprime(self):
        # print("Backprime")
        self.turn()
        self.Leftprime()
        self.turnBack()