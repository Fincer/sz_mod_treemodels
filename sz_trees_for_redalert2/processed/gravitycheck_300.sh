#!/bin/bash

for i in *.png; do
    convert $i -fill white -strokewidth 1 -draw "line 0,150 300,150" -draw "line 150,0 150,300"  $i.lines
done

mv *.lines ./gravitycheck
