#!/usr/bin/env python

# --- TEXTPATGEN-QUICKSCRIPT-PYTHON ---

# Users can change the output by editing
# this file directly.

# The text is written to a timestamped file.

import time

fp=open(time.strftime('00_%Y%m%d_%H%M%S.txt'), 'w')
fp.write(time.strftime('TEXTPATGEN-QUICKSCRIPT-PYTHON: %Y-%m-%dT%H:%M:%S%z\n'))
num=0
for length in range(0, 25):
  fp.write('%04X:The Quick Brown Fox Jumps over the Lazy Dog:%05d\n' % (num, num))
  num=num+1
  length=length+1
fp.close()

