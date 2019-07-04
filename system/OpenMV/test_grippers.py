# Programme to test that all servos are working - By: pykc - Fri Aug 10 2018

import time
from grippers import Grippers

# Main

RuBot = Grippers()

# test arms
RuBot.gripper_UD_open()
RuBot.gripper_LR_open()
time.sleep(1000)
RuBot.gripper_U0()
RuBot.gripper_D0()
RuBot.gripper_L0()
RuBot.gripper_R0()
time.sleep(1000)
RuBot.gripper_U90()
RuBot.gripper_D90()
RuBot.gripper_L90()
RuBot.gripper_R90()
time.sleep(1000)
RuBot.gripper_U180()
RuBot.gripper_D180()
RuBot.gripper_L180()
RuBot.gripper_R180()
time.sleep(1000)
RuBot.gripper_U90()
RuBot.gripper_D90()
time.sleep(1000)
RuBot.gripper_UD_close()
RuBot.gripper_LR_close()
time.sleep(1000)
RuBot.gripper_reset()
time.sleep(1000)
RuBot.gripper_UD_Xhold()
time.sleep(1000)
RuBot.gripper_LR_Hhold()
time.sleep(1000)
RuBot.gripper_UD_Yhold()
time.sleep(1000)
RuBot.gripper_LR_Vhold()
time.sleep(1000)
RuBot.gripper_spin()





