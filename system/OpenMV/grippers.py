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
        self.arm_states = [OPENED, OPENED, OPENED, OPENED]
        self.gripper_states = [0, 0, 0, 0]

    def gripper_U_open (self):
        self.servo.position(U_ARM, 120)
        self.arm_states[UP] = OPENED

    def gripper_D_open (self):
        self.servo.position(D_ARM, 120)
        self.arm_states[DOWN] = OPENED

    def gripper_L_open (self):
        self.servo.position(L_ARM, 140)
        self.arm_states[LEFT] = OPENED

    def gripper_R_open (self):
        self.servo.position(R_ARM, 120)
        self.arm_states[RIGHT] = OPENED

    def gripper_UD_open (self):
        self.gripper_U_open()
        self.gripper_D_open()

    def gripper_LR_open (self):
        self.gripper_L_open()
        self.gripper_R_open()

    def gripper_U_close (self):
        self.servo.position(U_ARM, 20)
        self.arm_states[UP] = CLOSED

    def gripper_D_close (self):
        self.servo.position(D_ARM, 30)
        self.arm_states[DOWN] = CLOSED

    def gripper_L_close (self):
        self.servo.position(L_ARM, 20)
        self.arm_states[LEFT] = CLOSED

    def gripper_R_close (self):
        self.servo.position(R_ARM, 20)
        self.arm_states[RIGHT] = CLOSED

    def gripper_UD_close (self):
        self.gripper_U_close()
        self.gripper_D_close()

    def gripper_LR_close (self):
        self.gripper_L_close()
        self.gripper_R_close()

    def gripper_U0 (self):
        # self.servo.position(U_GRIP, 10)
        self.servo.position(U_GRIP, 0)
        self.gripper_states[UP] = 0

    def gripper_U90 (self):
        # self.servo.position(U_GRIP, 95)
        self.servo.position(U_GRIP, 90)
        self.gripper_states[UP] = 90

    def gripper_U180 (self):
        self.servo.position(U_GRIP, 180)
        self.gripper_states[UP] = 180

    def gripper_D0 (self):
        self.servo.position(D_GRIP, 0)
        self.gripper_states[DOWN] = 0

    def gripper_D90 (self):
        self.servo.position(D_GRIP, 90)
        self.gripper_states[DOWN] = 90

    def gripper_D180 (self):
        self.servo.position(D_GRIP, 180)
        self.gripper_states[DOWN] = 180

    def gripper_L0 (self):
        self.servo.position(L_GRIP, 5)
        self.gripper_states[LEFT] = 0

    def gripper_L90 (self):
        self.servo.position(L_GRIP, 90)
        self.gripper_states[LEFT] = 90

    def gripper_L180 (self):
        self.servo.position(L_GRIP, 180)
        self.gripper_states[LEFT] = 180

    def gripper_R0 (self):
        self.servo.position(R_GRIP, 0)
        self.gripper_states[RIGHT] = 0

    def gripper_R90 (self):
        self.servo.position(R_GRIP, 90)
        self.gripper_states[RIGHT] = 90

    def gripper_R180 (self):
        self.servo.position(R_GRIP, 170)
        self.gripper_states[RIGHT] = 180

    def gripper_reset(self):
        self.gripper_UD_open()
        self.gripper_LR_open()
        time.sleep(500)
        self.gripper_U90()
        self.gripper_D90()
        self.gripper_L0()
        self.gripper_R180()

    def gripper_UD_Xhold(self):
        self.gripper_U_open()
        self.gripper_D_open()
        time.sleep(500)
        self.gripper_U90()
        self.gripper_D90()
        time.sleep(300)
        self.gripper_UD_close()

    def gripper_UD_Yhold(self):
        self.gripper_U_open()
        self.gripper_D_open()
        time.sleep(500)
        self.gripper_U0()
        self.gripper_D180()
        time.sleep(300)
        self.gripper_UD_close()

    def gripper_LR_Hhold(self):
        self.gripper_L_open()
        self.gripper_R_open()
        time.sleep(500)
        self.gripper_L0()
        self.gripper_R180()
        time.sleep(300)
        self.gripper_LR_close()

    def gripper_LR_Vhold(self):
        self.gripper_L_open()
        self.gripper_R_open()
        time.sleep(500)
        self.gripper_L90()
        self.gripper_R90()
        time.sleep(300)
        self.gripper_LR_close()

    def gripper_spin(self):
        self.gripper_UD_Xhold()
        self.gripper_LR_Hhold()
        time.sleep(1000)
        self.gripper_UD_open()
        time.sleep(1000)
        self.gripper_U0()
        self.gripper_D180()
        time.sleep(2000)
        self.gripper_UD_close()
        time.sleep(1000)
        self.gripper_LR_open()
        time.sleep(1000)
        self.gripper_U90()
        self.gripper_D90()
        time.sleep(1000)

    def gripper_roll(self):
        self.gripper_LR_Hhold()
        time.sleep(1000)
        self.gripper_UD_open()
        time.sleep(1000)
        self.gripper_UD_Yhold()
        time.sleep(1000)
        self.gripper_LR_open()
        time.sleep(1000)
        self.gripper_L90()
        self.gripper_R90()
        time.sleep(1000)
        self.gripper_LR_close()
        time.sleep(1000)
        self.gripper_UD_open()
        time.sleep(1000)
        self.gripper_L0()
        self.gripper_R180()
        self.gripper_UD_Xhold()
        time.sleep(1000)
        self.gripper_LR_open()
