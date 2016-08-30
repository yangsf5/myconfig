#!/bin/bash
# Author: sheppard(ysf1026@gmail.com) 2014-06-04

find . -name "*.h" -o -name "*.c" -o -name "*.cc" -o -name "*.cpp" > cscope.files
cscope -Rbq -i cscope.files

ctags -R --c++-kinds=+px --fields=+iaS --extra=+q -L cscope.files
