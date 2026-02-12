#!/usr/bin/env python

# --- TEXTPATGEN-QUICKSCRIPT-PYTHON ---

# This QuickScript generates random data.

# Users can change the output by editing
# this file directly.

# The text is written to a timestamped file.

import time
import random
from random import randrange

fp=open(time.strftime('00_%Y%m%d_%H%M%S.txt'), 'w')
fp.write(time.strftime('TEXTPATGEN-QUICKSCRIPT-PYTHON: %Y-%m-%dT%H:%M:%S%z\n'))
random.seed(100)
for length in range(0, 10):
  for width in range(0, 9):
    num=randrange(0, 99999)
    fp.write('D-%05d ' % num)
    width=width+1
    length=length+1
  num=randrange(0, 99999)
  fp.write('D-%05d\n' % num)
fp.close()
