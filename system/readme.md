The operation of the system is still being influenced by the lightning condition. It may work the best under warm white lighting. Some further adjustment to the __knn.py__ in the OpenMV directory may be needed to make it more robust towards lighting condition.

# Initialisation

## Computer side
Follow instruction from the webpage to download mosquitto https://mosquitto.org/download/

## Pynq Side
1. Once logged into pynq, upload the whole __pynq__ folder from github into the "jupyter\_notebooks" folder of PYNQ board.
2. Connect the wifi dongle to usb port of pynq
3. Open up new terminal and run command "python3 /home/xilinx/jupyter\_notebooks/system/wifi.py" to connect to wifi
4. In terminal, run "sudo apt-get install mosquitto-clients" to install mosquitto
5. In terminal, run "pip3 install paho-mqtt" to install python mosquitto
6. you may wish to change the wifi ssid and password in the __/home/xilinx/jupyter\_notebooks/system/pynqAll.py__ of OpenMV, it is being located at the line 1 and 2 of the file

## OpenMV side
1. Connect OpenMV CAM board togetehr with wifi shield to the computer
2. upload the whole __OpenMV__ folder from github into the OpenMV board.
3. you may wish to change the wifi ssid and password in the __knn2.py__ of OpenMV, it is being located at the line 9 and 10 of the __knn2.py__

# Calibration
The performance of the solver will depend on the lightning condition and camera position, the easier way to calibrate the camera position is by using a solved cube and run the solver once.

Check for the pieces that do not being identified correctly and adjust the camera position accordingly.

# Operation
## Pynq Side
1. Start up the PYNQ board
2. Connect the wifi dongle to usb port of pynq
3. Start a new terminal and run the command "python3 /home/xilinx/jupyter\_notebooks/system/pynqAll.py"
4. wait for the terminal to print out  "subcribe colours"
5. If there is difficulty in connection, run the command "sudo nano /etc/resolv.conf" in terminal and change the 127.0.0.53 to 8.8.8.8. CTRL+X and SHIFT+Y to save the change, repeat the stage 3 and 4 above.

## OpenMV side
1. Connect OpenMV CAM board togetehr with wifi shield and motor controller to the computer
2. Run the __knn2.py__ using the OpenMV IDE

## Computer side
1. To start the Rubik's Cube solver, open a terminal in any computer run the commad "mosquitto_pub -h broker.hivemq.com -t "jy/start" -m "True"" to start the robot
2. place the cube in the robot, there is 5s delay
