import math
import string
f = open("sinerom.mem","w")
# w means to write on the file 
for i in range(256):
    v = int(math.cos(2*3.1416*i/256)*127+127)
    #Will output sine values for time period 256 and 
    # multiply 127 for scale factor
    #Use cos as it is sine with 90 degree phase shift and 
    #this way the cos value will not start at 0 like sine 
    if (i+1)%16 == 0:
        s = "{hex:2X}\n"
    #after 16 values go to next line 
    else:
        s = "{hex:2X} "
        # writes format in 2 digit hexidecimal 
    f.write(s.format(hex=v))
    #tells python to write hex values v in string format 

f.close()
