#!/bin/bash 

for i in *.png; do
    convert $i -gravity center -extent 200x200 $i.resized
done

mv *.resized ./resized
