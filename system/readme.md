\begin{itemize}
\item Once logged in, upload the whole "system" folder from github under directory pynq into the "jupyter\_notebooks" folder of PYNQ board.
\item Connect the wifi dongle to usb port of pynq
\item Open up new terminal and run command "python3 /home/xilinx/jupyter\_notebooks/system/wifi.py" to connect to wifi
\item run "sudo apt-get install mosquitto-clients" to install mosquitto
\item run "pip3 install paho-mqtt" to install python mosquitto
\end{itemize}

\begin{itemize}
\item First, you may wish to change the wifi ssid and password in the main.py of OpenMV, it is being located at the line 9 and 10 of the main.py
\item Run the main.py using the OpenMV IDE
\end{itemize}

\begin{itemize}
\item Next start up the PYNQ board
\item Change the wifi ssid and password in the "/home/xilinx/jupyter\_notebooks/system/pynqAll.py", located at line 1 and 2
\item start a new terminal and run the command "python3 /home/xilinx/jupyter\_notebooks/system/pynqAll.py"
\item wait for the terminal to print out  "subcribe colours"
\item If there is difficulty in connection, run the command "sudo nano /etc/resolv.conf" and change the 127.0.0.53 to 8.8.8.8. CTRL+X and SHIFT+Y to save the change.
\end{itemize}

\begin{itemize}
\item open a terminal in any computer run the commad "mosquitto_pub -h broker.hivemq.com -t "jy/start" -m "True"" to start the robot
\item place the cube in the robot, there is 5s delay
\end{itemize}

\begin{itemize}
\item prerequiste need to install mosquitto in both computer and pynq
\item in computer, follow instruction from this page to download mosquitto https://mosquitto.org/download/
\end{itemize}
