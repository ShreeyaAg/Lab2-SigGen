import math
import string
f = open("sinerom.mem","w") #opens a .mem file to write in
for i in range(256): #loop generates 256 values
    v = int(math.cos(2*3.1416*i/256)*127+127)
    if (i+1)%16 == 0: #every 16 values creates a new line
        s = "{hex:2X}\n"
    else:
        s = "{hex:2X} " #defining format of the element, so generate 2 digit hex, but also new line every 16 elements
    f.write(s.format(hex=v)) #write generated element into the .mem file

f.close()
