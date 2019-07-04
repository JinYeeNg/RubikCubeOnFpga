# USB VCP example.
# This example shows how to use the USB VCP class to send an image to PC on demand.
#
# WARNING:
# This script should NOT be run from the IDE or command line, it should be saved as main.py
# Note the following commented script shows how to receive the image from the host side.
#
# #!/usr/bin/env python2.7
# import sys, serial, struct
# port = '/dev/ttyACM0'
# sp = serial.Serial(port, baudrate=115200, bytesize=serial.EIGHTBITS, parity=serial.PARITY_NONE,
#             xonxoff=False, rtscts=False, stopbits=serial.STOPBITS_ONE, timeout=None, dsrdtr=True)
# sp.write("snap")
# sp.flush()
# size = struct.unpack('<L', sp.read(4))[0]
# img = sp.read(size)
# sp.close()
#
# with open("img.jpg", "w") as f:
#     f.write(img)

import sensor, image, time, ustruct
from pyb import USB_VCP

usb = USB_VCP()
sensor.reset()                      # Reset and initialize the sensor.
sensor.set_pixformat(sensor.RGB565) # Set pixel format to RGB565 (or GRAYSCALE)
#sensor.set_auto_gain(True)          # Automatically set the gain
#sensor.__write_reg(0x6B, 0x22)      # Enable Advanced AWB
#sensor.set_auto_whitebal(True)      # Automatically set the white balance
#sensor.set_auto_exposure(True)      # Automatically set the exposure
sensor.set_framesize(sensor.QVGA)   # Set frame size to QVGA (320x240)
sensor.skip_frames(time = 2000)     # Wait for settings take effect.

while(True):
    cmd = usb.recv(4, timeout=5000)
    if(cmd== b'move'):
        move = usb.recv(1, timeout=5000)
        a=usb.send(move)
    #if (cmd == b'snap'):
        #img = sensor.snapshot().compress()
    usb.send(ustruct.pack("<L", 54))
        #usb.send(img)
    a=usb.send("DRLUUBFBRBLURRLRUBLRDDFDLFUFUFFDBRDUBRUFLLFDDBFLUBLRBD")

    #print('r')