#!/usr/bin/python

import os

imp = [x for x in os.listdir(".") if x[-4:] == "flac"]


print(imp)
for x in imp:
    cmd = 'ffmpeg -i "' + x + '" "' + x[0:-4] + 'mp3"'
    os.system(cmd)
