## Task 3: Capture and display audio signal in RAM

The goal is to capture the real audio signal using the microphone/amplifier module on Vbuddy.

These samples are written to a dual-port RAM stored in successive locations - starting at address 0 + offset.

At the same time, they're read back from the RAM in successive locations - starting at address 0.

The offset works because we can't read and write simultaneously - so there needs to be a delay between the writing and reading.
 - The writing is offsetted as we can't read things which haven't been written yet.
 - the offset is the difference between the read and write address
 - the offset is varied using the rotary encoder, and the *vbdValue()* function allows us to vary the offset

This all means the retreived signal is a delayed version of the original signal.

I created the files as specified in the task 3 directory.

I then tested it out with the tone generator to specify different outputs:

add in pics of different waves being tested.