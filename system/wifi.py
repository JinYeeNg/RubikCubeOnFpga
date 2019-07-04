from pynq.lib import Wifi

port = Wifi()

ssid = input("Type in the SSID:")
pwd = input("Type in the password:")
port.connect(ssid, pwd)
