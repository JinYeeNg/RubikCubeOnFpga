import numpy as np
import filecmp

fileNameCmp = "results/cmp"
fileName0 = "results/twistMove"
fileName1 = "results/flipMove"
fileName2 = "results/FRtoBR_Move"
fileName3 = "results/URFtoDLF_Move"
fileName4 = "results/URtoDF_Move"
fileName5 = "results/URtoUL_Move"
fileName6 = "results/UBtoDF_Move"
fileName7 = "results/MergeURtoULandUBtoDF"
fileName8 = "results/Slice_URFtoDLF_Parity_Prun"
fileName9 = "results/Slice_URtoDF_Parity_Prun"
fileName10 = "results/Slice_Twist_Prun"
fileName11 = "results/Slice_Flip_Prun"

def insert_16(fileName):
    f = open(fileName,'rb')
    buffer= f.read()
    lSize=f.tell()

    # list_short = []
    # for i in np.arange(int(lSize/2)):
    #     list_short.append((buffer[i*2]) +( buffer [(i*2)+1]<<8))
    buffer_short = np.fromstring(buffer,dtype=np.uint16)

    open(fileNameCmp, 'w').close()
    f_out = open(fileNameCmp,'w+b')

    # for i in np.arange(int(lSize/2)):
    #     f_out.write(buffer_short[i])
    f_out.write(buffer_short)

    f.close()
    f_out.close()
    #f.seek(0)
    return buffer_short, lSize

def insert_8(fileName):
    f = open(fileName,'rb')
    buffer= f.read()
    lSize=f.tell()

    buffer_char = np.fromstring(buffer,dtype=np.uint8)

    open(fileNameCmp, 'w').close()
    f_out = open(fileNameCmp,'w+b')

    f_out.write(buffer_char)

    f.close()
    f_out.close()

    return buffer_char, lSize

data_np = np.arange(10)
tree_buf, size = insert_16(fileName0)
print(filecmp.cmp(fileName0,fileNameCmp))

tree_buf, size = insert_16(fileName1)
print(filecmp.cmp(fileName1,fileNameCmp))

tree_buf, size = insert_16(fileName2)
print(filecmp.cmp(fileName2,fileNameCmp))

tree_buf, size = insert_16(fileName3)
print(filecmp.cmp(fileName3,fileNameCmp))

tree_buf, size = insert_16(fileName4)
print(filecmp.cmp(fileName4,fileNameCmp))

tree_buf, size = insert_16(fileName5)
print(filecmp.cmp(fileName5,fileNameCmp))

tree_buf, size = insert_16(fileName6)
print(filecmp.cmp(fileName6,fileNameCmp))

tree_buf, size = insert_16(fileName7)
print(filecmp.cmp(fileName7,fileNameCmp))

tree_buf, size = insert_8(fileName8)
print(filecmp.cmp(fileName8,fileNameCmp))

tree_buf, size = insert_8(fileName9)
print(filecmp.cmp(fileName9,fileNameCmp))

tree_buf, size = insert_8(fileName10)
print(filecmp.cmp(fileName10,fileNameCmp))

tree_buf, size = insert_8(fileName11)
print(filecmp.cmp(fileName11,fileNameCmp))

