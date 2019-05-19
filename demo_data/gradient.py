#!/usr/bin/python3

# # Copyright 2019 BinaryCounter
# All rights reserved.
# This file is part of SNESterm,
# and is released under the "MIT License Agreement". Please see the LICENSE
# file that should have been included as part of this package.


# This is a simple SNES HDMA gradient generator. It generates a table of colors to be interpolated between using HDMA.
# To use it, include the generated binary in your source and set up a direct HDMA channel in mode 3 on B Bus port $2121
# in libSFX you'd do it like this:
# HDMA_set_absolute 0, 3, $21, RESOURCE_GRADIENT
# incbin RESOURCE_GRADIENT, "gradient.hdma"

# This tool requires the colour package. to install it type "py -m pip install colour"



from colour import Color
import math
import sys

def printusage():
    print("Usage: gradient.py <color1> <color2> <up|down|near> <ntsc|pal> <palette_slot> <output filename>")
    print("<up|down|near> specifies whether to round up, down or to the nearest color when converting to SNES color format")
    print("<ntsc|pal> specifies whether to output a 224 line or 240 line gradient")
    print("<palette_slot> is the color slot you want to write to. (Usually 0 for background color)")
    print("----")
    print("Example: gradient.py FFFFFF 000000 near pal 0 gradient.hdma")
    exit()

def s_round(number, mode):
    if(mode == "up"):
        return int(math.ceil(number))
    if(mode == "down"):
        return int(math.floor(number))
    if(mode == "near"):
        return int(round(number))

if(len(sys.argv) != 7):
    print("Invalid number of arguments:", len(sys.argv))
    printusage()

col1=sys.argv[1]
col2=sys.argv[2]
mode=sys.argv[3]
line=sys.argv[4]
slot=int(sys.argv[5])
out =sys.argv[6]

if(mode != "up" and mode != "down" and mode != "near"):
    print("Error: Invalid rounding mode:",mode)
    printusage()

if(line != "ntsc" and line != "pal"):
    print("Error: Invalid video mode:",line)
    printusage()
    

if(line=="ntsc"):
    linecount=224
else:
    linecount=240

f=open(out, "wb")

gradient=Color("#"+col1).range_to(Color("#"+col2),linecount)
o=0

for i in gradient:
    if o==0:
        f.write(bytes([0xFF]))
    if o==127:
        f.write(bytes([linecount+1]))
    r=i.rgb[0]*255
    g=i.rgb[1]*255
    b=i.rgb[2]*255
    r=s_round(r/8,mode)
    g=s_round(g/8,mode)
    b=s_round(b/8,mode)
    packed=r+(g<<5)+(b<<10)
    f.write(bytes([slot,slot]))
    f.write(bytes([packed%256,packed//256]))
    o+=1
f.write(bytes([0x00]))

exit()





















 ## old print out version here
for i in gradient:
    if o==0:
        print("FF",end=' ')
    if o==127:
        print("E1",end=' ')
    r=i.rgb[0]*255
    g=i.rgb[1]*255
    b=i.rgb[2]*255
    r=s_round(r/8,mode)
    g=s_round(g/8,mode)
    b=s_round(b/8,mode)
    packed=r+(g<<5)+(b<<10)
    string="{0:0{1}x}".format(int(packed),4)
    string=string[2:4]+string[0:2]
    print("0000 ",end="")
    print(string,end=' ')
    o+=1
print("00")