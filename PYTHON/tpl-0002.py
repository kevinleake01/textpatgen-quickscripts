#!/usr/bin/env python

# --- TEXTPATGEN-QUICKSCRIPT-PYTHON ---

# Users can change the output by editing
# this file directly.

# The text is written to a timestamped file.

import time

fp=open(time.strftime('00_%Y%m%d_%H%M%S.txt'), 'w')
fp.write(time.strftime('TEXTPATGEN-QUICKSCRIPT-PYTHON: %Y-%m-%dT%H:%M:%S%z\n'))
num=0
for length in range(0, 10):
  for width in range(0, 9):
    fp.write('X-%05d ' % num)
    num=num+1
    width=width+1
    length=length+1
  fp.write('X-%05d\n' % num)
  num=num+1
fp.close()

