ssid = 'POCOPHONE'#input("Type in the SSID:")  ##wifi configuration change here
pwd = 'Abc0174529965#'#input("Type in the password:")
#####import
import numpy as np
import filecmp
import pynq.lib.dma
from pynq import Xlnk
import time
from pynq import Overlay
from pynq import MMIO
import subprocess
import paho.mqtt.client as paho  ##1 import library
from pynq.lib import Wifi

##directory and bitstream name
directory ="/home/xilinx/jupyter_notebooks/system/"
ol= Overlay(directory +"kociemba.bit")

##address
maxDepthBaseAddress = 0x080    ###maximum move allow
unsolvableBaseAddress = 0x088  ###unsolvable flag
coloursBaseAddress = 0x040     ###colour register address
orderBaseAddress = 0x090       ###register that store number of move to solve the cube
moveArrayBaseAddress = 0x0a0   ###registere that store move solution

##initialise mmio
mmio=MMIO(0x43C00000,0x10000)
mmio.write(maxDepthBaseAddress, 24)
#print(mmio.read(maxDepthBaseAddress))

##function
def readfile_short(fileName):
    f = open(fileName,'rb')
    buffer= f.read()
    lSize=f.tell()
    buffer_short = np.fromstring(buffer,dtype=np.short)
    open(cmpFile, 'w').close()
    f_out = open(cmpFile,'w+b')
    f_out.write(buffer_short)
    f.close()
    f_out.close()
    return buffer_short, int(lSize/2)

def readfile_char(fileName):
    f = open(fileName,'rb')
    buffer= f.read()
    lSize=f.tell()
    buffer_char = np.fromstring(buffer,dtype=np.byte)
    open(cmpFile, 'w').close()
    f_out = open(cmpFile,'w+b')
    f_out.write(buffer_char)
    f.close()
    f_out.close()
    return buffer_char, lSize

def assign(mNum):
    if(mNum==0):
        moves.append("U-")
    elif(mNum==1):
        moves.append("U2")
    elif(mNum==2):
        moves.append("U'")
    elif(mNum==3):
        moves.append("R-")
    elif(mNum==4):
        moves.append("R2")
    elif(mNum==5):
        moves.append("R'")
    elif(mNum==6):
        moves.append("F-")
    elif(mNum==7):
        moves.append("F2")
    elif(mNum==8):
        moves.append("F'")
    elif(mNum==9):
        moves.append("D-")
    elif(mNum==10):
        moves.append("D2")
    elif(mNum==11):
        moves.append("D'")
    elif(mNum==12):
        moves.append("L-")
    elif(mNum==13):
        moves.append("L2")
    elif(mNum==14):
        moves.append("L'")
    elif(mNum==15):
        moves.append("B-")
    elif(mNum==16):
        moves.append("B2")
    elif(mNum==17):
        moves.append("B'")
    else:
        print("error in coverting value in memory to move")

def bytes(num):  ##decode the move solution from PL register
    assign(num& 0xff) 
    assign(num >>8 & 0xff)
    assign(num >> 16 & 0xff)
    assign(num >> 24& 0xff)

def solve(colours):   ####solve the cube
    global state
    state=""
    for i in np.arange(0,52,4):   ##encode colour and write into PL register
        coloursMem = ord(colours[i]) + (ord(colours[i+1])<< 8) + (ord(colours[i+2])<< 16) +(ord(colours[i+3])<< 24)
        mmio.write(coloursBaseAddress+ i ,coloursMem)
    coloursMem= ord(colours[52]) +(ord(colours[53])<< 8)
    mmio.write(coloursBaseAddress+ 52 ,coloursMem)

    mmio.write(0x000, 1)
    start_time = time.time()
    while ((mmio.read(0x000)& 0x2)!=2):   ###wait to complete 
        pass
    elapsed_time = time.time() - start_time
    global order  ##number of move to solve the cube 
    order = int(mmio.read(orderBaseAddress))   ##read number of move
    j=0
    moves.clear()
    if (mmio.read(unsolvableBaseAddress)==1):   ##check for unsolvable state
        state= "Unsolvable"
        print("Unsolvable")
        return
    while( j<order):
        data = mmio.read(int(moveArrayBaseAddress)+j)   ###read solution move
        bytes(data)
        j=j+4
    print("Number of moves is ", order)
    print("elapsed time is ", elapsed_time)
    print(moves[0:order])

#define callback for mqtt subscribe
def on_message(client, userdata, message):
    time.sleep(1)
    global colours
    print("received message =",str(message.payload.decode("utf-8")))
    colours= str(message.payload.decode("utf-8"))
#######################################################################################################################
##initialise linkage from PS to off chip memory 
xlnk = Xlnk()
xlnk.xlnk_reset()
###list of the location of file to read in
cmpFile = directory+"results/cmp"

list_file_short = ["results/twistMove",\
                   "results/flipMove",\
                   "results/FRtoBR_Move",\
                   "results/URFtoDLF_Move",\
                   "results/URtoDF_Move",\
                   "results/URtoUL_Move",\
                   "results/UBtoDF_Move",\
                   "results/MergeURtoULandUBtoDF"]

list_file_char = ["results/Slice_URFtoDLF_Parity_Prun",\
                  "results/Slice_URtoDF_Parity_Prun",\
                  "results/Slice_Twist_Prun",\
                  "results/Slice_Flip_Prun"]

pruneTableMem=[]

################################################functional part################################################
###read all the pruning table and move table into memory and check correctness
#initialise data in off chip memory
j =0;
for file in list_file_short:
    pruneTable, size = readfile_short(directory+file)
    if (filecmp.cmp(directory+file,cmpFile)==False):
        print("file compared fail")
    pruneTableMem.append(xlnk.cma_array(shape=(size,), dtype=np.short))
    for i in np.arange(size):
        pruneTableMem[j][i]=pruneTable[i]
    j = j + 1
        
for file in list_file_char:
    pruneTable, size = readfile_char(directory+file)
    if (filecmp.cmp(directory+file,cmpFile)==False):
        print("file compared fail")
    pruneTableMem.append(xlnk.cma_array(shape=(size,), dtype=np.byte))
    for i in np.arange(size):
        pruneTableMem[j][i]=pruneTable[i]
    j = j + 1
    
##############################################################################################################################
##write all the pruning table and move table into off chip memory
pruneTable_address=[0x010,0x018,0x020,0x028,0x030,0x038,0x098,0x0c0,0x0c8,0x0d0,0x0d8,0x0e0 ]

for i in np.arange(len(pruneTable_address)):
    mmio.write(pruneTable_address[i],pruneTableMem[i].physical_address)


##connect to wifi
port = Wifi()
port.connect(ssid, pwd)
broker="broker.hivemq.com"

moves= []    ###store move solution
colours=""   ###store colour input

client2= paho.Client("client-002") #2 create client object client1.on_publish = on_publish #assign function to callback 
client2.on_message=on_message 
#####
print("connecting to broker ",broker)
client2.connect(broker)#3 establish connection to broker
client2.loop_start() 
print("subscribing colour")
time.sleep(1)
while(True):
    port.connect(ssid, pwd)    #connect wifi
    print("subscribing colour")   #subscribe colour
    bashCommand = "mosquitto_sub -h broker.hivemq.com -t \"jy/colours\" -C 1" 
    colours = subprocess.check_output(bashCommand, shell=True, universal_newlines=False).decode("utf-8") 
    if colours !="":
        time.sleep(1)
        solve (colours)             ##solve the cube
        colours=""
        moveSend=''.join(moves)[0:order*2]
        if state=="Unsolvable":     ######special case
            moveSend="Unsolvable"
        elif order==0:
            moveSend="Solved"
        print("publishing move")    ######publish move
        time.sleep(1)
        client2.publish("jy/move", moveSend)
        time.sleep(1)

###close mqtt client
client2.disconnect() #disconnect
client2.loop_stop() #stop loop