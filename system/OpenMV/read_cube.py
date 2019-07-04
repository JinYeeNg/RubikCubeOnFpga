# Untitled - By: pykc - Fri Aug 10 2018

import sensor, image, time
from cube_face import Cube_Face
from grippers import Grippers

# Main
sensor.reset()
sensor.set_pixformat(sensor.RGB565)
sensor.set_framesize(sensor.QVGA)
sensor.skip_frames(time = 1000)
sensor.set_auto_gain(True) # must be turned off for color tracking
sensor.set_auto_whitebal(True) # must be turned off for color tracking
clock = time.clock()

RuBot = Grippers()
cube = Cube_Face()
# Load Cube
RuBot.gripper_reset()
print('\n\n****  Place the Rubik\'s Cube on RuBot  ****\n')
time.sleep(5000)

# Read back cube face
RuBot.gripper_UD_close()
time.sleep(1000)

face_colour = [ ]

# read Back, left, front and right faces
for i in range(0,4):
    face_colour.append(cube.find_face_colour())
    print('Face ',i,': ',face_colour[i])

    # Spin Cube horizontally to read next face
    RuBot.gripper_spin()
    time.sleep(2000)

RuBot.gripper_spin()
time.sleep(2000)

# read top and bottom faces
RuBot.gripper_roll()
time.sleep(2000)
face_colour.append(cube.find_face_colour())
print('Face ',i,': ',face_colour[i])
i = i + 1
RuBot.gripper_roll()
time.sleep(2000)
RuBot.gripper_roll()
time.sleep(2000)
face_colour.append(cube.find_face_colour())
print('Face ',i,': ',face_colour[i])

RuBot.gripper_roll()
time.sleep(2000)

sensor.flush()
time.sleep(1000)



