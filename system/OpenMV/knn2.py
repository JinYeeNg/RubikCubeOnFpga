from grippersJY import Grippers
from servo import Servos
from machine import I2C, Pin
import sensor, image, time, network, math
from cube_face import Cube_Face
from mqtt import MQTTClient

#wifi configuration change here
SSID='POCOPHONE' # Network SSID
KEY='Abc0174529965#'  # Network key

# Main
sensor.reset()
sensor.set_pixformat(sensor.RGB565)
sensor.set_framesize(sensor.QVGA)
sensor.skip_frames(time = 1000)
sensor.set_auto_gain(True) # must be turned off for color tracking
sensor.set_auto_whitebal(True) # must be turned off for color tracking
i2c = I2C(sda=Pin('P5'), scl=Pin('P4'))
servo = Servos(i2c, address=0x40, freq=50, min_us=650, max_us=2800, degrees=180)
cube = Cube_Face()
RuBot=Grippers()

#function
def euclideanDistance(instance1, instance2):
    distance = 0
    for x in range(len(instance2)):
        distance += pow((instance1[x] - instance2[x]), 2)
    return distance

def custom_sort(t):
    return t[1]

def getNeighbors(trainingSet, testInstance, k, n, distArray, colourName):
    distances = []
    length = len(testInstance)-1
    for x in range(len(trainingSet)):
        dist = euclideanDistance(testInstance, trainingSet[x])
        distances.append((trainingSet[x], dist, x))

    distances.sort(key=custom_sort)
    neighbors = []
    for x in range(n):
        neighbors.append(distances[x][0])
        iter= distances[x][2]
        if(distArray[iter]>distances[x][1]):
            colourName[iter]=k
            distArray[iter]=distances[x][1]
    return neighbors, distances

def spin():
    RuBot.gripper_U_open()
    time.sleep(1000)
    RuBot.gripper_D0()
    RuBot.gripper_U0()
    time.sleep(1000)
    RuBot.gripper_U_close()
    time.sleep(1000)
    RuBot.gripper_LR_close()
    time.sleep(1000)
    RuBot.gripper_UD_open()
    time.sleep(1000)
    RuBot.gripper_D90()
    RuBot.gripper_U90()
    time.sleep(1000)
    RuBot.gripper_UD_close()
    time.sleep(1000)
    RuBot.gripper_LR_open()
    time.sleep(1000)

#read cube function
def readCube():
    global colours
    RuBot.gripper_reset() #reset
    RuBot.gripper_L0()
    RuBot.gripper_R0()
    RuBot.gripper_D90()
    RuBot.gripper_U90()
    print('\n\n****  Place the Rubik\'s Cube on RuBot  ****\n')
    time.sleep(5000)

    face_colour = [ ]
    i=0
    #back face
    RuBot.gripper_UD_close()
    time.sleep(1000)
    face_colour.append(cube.find_face_colour())
    print('Face ',i,': ',face_colour[i])
    i=i+1

    #left face, front face
    for j in range(2):
        spin()
        face_colour.append(cube.find_face_colour())
        print('Face ',i,': ',face_colour[i])
        i=i+1

    #bottom face
    RuBot.gripper_LR_close()
    time.sleep(1000)
    RuBot.gripper_UD_open()
    time.sleep(1000)
    RuBot.gripper_D0()
    RuBot.gripper_U0()
    time.sleep(1000)
    RuBot.gripper_UD_close()
    time.sleep(1000)
    RuBot.gripper_LR_open()
    time.sleep(1000)
    RuBot.gripper_L90()
    RuBot.gripper_R90()
    time.sleep(1000)
    RuBot.gripper_LR_close()
    time.sleep(1000)
    RuBot.gripper_UD_open()
    time.sleep(1000)
    RuBot.gripper_L180()
    RuBot.gripper_R0()
    time.sleep(1000)
    RuBot.gripper_D90()
    RuBot.gripper_U90()
    time.sleep(1000)
    RuBot.gripper_UD_close()
    time.sleep(1000)
    RuBot.gripper_LR_open()
    time.sleep(1000)
    face_colour.append(cube.find_face_colour())
    print('Face ',i,': ',face_colour[i])
    i=i+1

    #up face
    RuBot.gripper_LR_close()
    time.sleep(1000)
    RuBot.gripper_UD_open()
    time.sleep(1000)
    RuBot.gripper_D0()
    RuBot.gripper_U0()
    time.sleep(1000)
    RuBot.gripper_L0()
    RuBot.gripper_R180()
    time.sleep(1000)
    RuBot.gripper_D90()
    RuBot.gripper_U90()
    time.sleep(1000)
    RuBot.gripper_UD_close()
    time.sleep(1000)
    RuBot.gripper_LR_open()
    time.sleep(1000)
    face_colour.append(cube.find_face_colour())
    print('Face ',i,': ',face_colour[i])
    i=i+1

    #right face
    RuBot.gripper_LR_close()
    time.sleep(1000)
    RuBot.gripper_UD_open()
    time.sleep(1000)
    RuBot.gripper_D0()
    RuBot.gripper_U0()
    time.sleep(1000)
    RuBot.gripper_L90()
    RuBot.gripper_R90()
    time.sleep(1000)
    RuBot.gripper_UD_close()
    time.sleep(1000)
    RuBot.gripper_LR_open()
    time.sleep(1000)
    RuBot.gripper_L0()
    RuBot.gripper_R0()
    time.sleep(1000)
    RuBot.gripper_LR_close()
    time.sleep(1000)
    RuBot.gripper_UD_open()
    time.sleep(1000)
    RuBot.gripper_D90()
    RuBot.gripper_U90()
    time.sleep(1000)
    RuBot.gripper_UD_close()
    time.sleep(1000)
    RuBot.gripper_LR_open()
    time.sleep(1000)

    spin()
    face_colour.append(cube.find_face_colour())
    print('Face ',i,': ',face_colour[i])
    spin()

    ##reset
    RuBot.gripper_LR_close()
    time.sleep(1000)
    RuBot.gripper_UD_open()
    time.sleep(1000)
    RuBot.gripper_D0()
    RuBot.gripper_U0()
    time.sleep(1000)
    RuBot.gripper_UD_close()
    time.sleep(1000)


    # colourRGB store the colour RGB in correct sequence of URFDLB
    colourRGB=[]
    colourRGB= colourRGB +face_colour[4]#U
    colourRGB= colourRGB +face_colour[5]#R
    colourRGB= colourRGB +face_colour[2]#F
    colourRGB= colourRGB +face_colour[3]#D
    colourRGB= colourRGB +face_colour[1]#L
    colourRGB= colourRGB +face_colour[0]#B
    colourRGB = [list(x) for x in colourRGB]

    colourName =[0]*54            #array to store colour number 1,2,3,4,5,6 123456->URFDLB
    distArray =[100000000000]*54  #array to store minimum distance
    for i in range(6):            #set the centre pices first
        distArray[4+i*9]=0
        colourName[4+i*9]=i+1

    for i in range (6): #knn with 9 neighbours for each colours
        nn, distances= getNeighbors(colourRGB, colourRGB[4+i*9],i+1,9, distArray, colourName) #allocate colour number

    colourIter= [9,9,9,9,9,9]
    pass1=False
    while (pass1==False): #do until all colours has 9 neighbours
        pass1=True
        colourCount =[0]*6
        for i in range(54):  #check for unfill pieces , increase neighbour allocaion for colour that has less than 9 neighbours allocated
            if(colourName[i]!=0):
                colourCount[colourName[i]-1]=colourCount[colourName[i]-1]+1


        for i in range (6): #redo knn
            if(colourCount[i]!=9):
                colourIter[i]=colourIter[i]+1
                nn, distances= getNeighbors(colourRGB, colourRGB[4+i*9],i+1,colourIter[i], distArray, colourName )
                pass1=False

    for i in range(6):  #print colour
        print(colourName[i*9:i*9+9])

    colourChar=[]    #encode colour number to colour char
    for i in range(54):
        if colourName[i]==1:
            colourChar.append('U')
        elif colourName[i]==2:
            colourChar.append('R')
        elif colourName[i]==3:
            colourChar.append('F')
        elif colourName[i]==4:
            colourChar.append('D')
        elif colourName[i]==5:
            colourChar.append('L')
        elif colourName[i]==6:
            colourChar.append('B')
    colours= ''.join(colourChar)
    print(colours)


###################################################################functional part################
# Init wlan module and connect to network
#print("Trying to connect... (may take a while)...")
wlan = network.WINC()
wlan.connect(SSID, key=KEY, security=wlan.WPA_PSK)

start = ""
move= b''
def sub_cb(topic, msg): #callback function
    global start
    global move
    print(topic)
    if topic==b'jy/start':
        start=msg
        print(start)
    if topic==b'jy/move':
        move=msg
        print(move)
    print((topic, msg))
broker="broker.hivemq.com" #broker name

client = MQTTClient("openmv", broker) #connect to mqtt broker
client.set_callback(sub_cb)
client.connect()
print("subscribing start") #subcribe start
#####################################################################reading stage
while (True):
    client.subscribe("jy/start")
    if start==b'True':
        start=""
        readCube()   #reading cube
        print("publishing colours") #publish colour
        client.publish("jy/colours", colours)
        time.sleep(1000)
        print("subscribing moves")
        pass1=1
        while   pass1 == 1:
            client.subscribe("jy/move") #subcribe move
            if move !=b'':
                moveSend=move
                if moveSend==b'Unsolvable':  # test for special case unsolvable and solved
                    print("Unsolvable")
                elif moveSend==b'Solved':
                    print("Solved")
##########################################################################solving stage
                else:
                    moveSplit=list(moveSend)
                    i=len(moveSplit)
                    print("Start rotate")

                    for j in range(0, int(i/2)):
                        if moveSplit[2*j]==ord('U'):
                            if moveSplit[2*j+1]==ord('-'):
                                RuBot.Up()
                            elif moveSplit[2*j+1]==ord('2'):
                                RuBot.Up2()
                            elif moveSplit[2*j+1]==ord("'"):
                                RuBot.Upprime()
                        elif moveSplit[2*j]==ord('D'):
                            if moveSplit[2*j+1]==ord('-'):
                                RuBot.Down()
                            elif moveSplit[2*j+1]==ord('2'):
                                RuBot.Down2()
                            elif moveSplit[2*j+1]==ord("'"):
                                RuBot.Downprime()
                        elif moveSplit[2*j]==ord('R'):
                            if moveSplit[2*j+1]==ord('-'):
                                RuBot.Right()
                            elif moveSplit[2*j+1]==ord('2'):
                                RuBot.Right2()
                            elif moveSplit[2*j+1]==ord("'"):
                                RuBot.Rightprime()
                        elif moveSplit[2*j]==ord('L'):
                            if moveSplit[2*j+1]==ord('-'):
                                RuBot.Left()
                            elif moveSplit[2*j+1]==ord('2'):
                                RuBot.Left2()
                            elif moveSplit[2*j+1]==ord("'"):
                                RuBot.Leftprime()
                        elif moveSplit[2*j]==ord('F'):
                            if moveSplit[2*j+1]==ord('-'):
                                RuBot.Front()
                            elif moveSplit[2*j+1]==ord('2'):
                                RuBot.Front2()
                            elif moveSplit[2*j+1]==ord("'"):
                                RuBot.Frontprime()
                        elif moveSplit[2*j]==ord('B'):
                            if moveSplit[2*j+1]==ord('-'):
                                RuBot.Back()
                            elif moveSplit[2*j+1]==ord('2'):
                                RuBot.Back2()
                            elif moveSplit[2*j+1]==ord("'"):
                                RuBot.Backprime()
################################################################################3###realease cube
                print("Release cube")
                RuBot.gripper_LR_open()
                time.sleep(1000)
                RuBot.gripper_UD_open()
                time.sleep(1000)
                RuBot.gripper_U90()
                RuBot.gripper_D90()
                move=b''
                pass1=0
                break



