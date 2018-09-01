#!/bin/bash

for filename in *.resized; do newname=`echo $filename | sed 's/\.png\.resized$/.png/g'`; mv $filename $newname; done 
