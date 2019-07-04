# Programme to test that all servos are working - By: pykc - Fri Aug 10 2018

import time
from grippers import Grippers

# Main

RuBot = Grippers()

# test arms
RuBot.gripper_reset()
time.sleep(5000)
RuBot.gripper_spin()





