#!/usr/bin/python
# Author: sheppard(ysf1026@gmail.com) 2014-03-27

import os
import shutil

shutil.copy2('./gitconfig', os.path.expanduser("~/.gitconfig"))
