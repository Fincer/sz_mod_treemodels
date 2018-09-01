#!/bin/bash

for i in *.png; do
    convert $i -fill white -strokewidth 1 -draw "line 0,125 250,125" -draw "line 125,0 125,250"  $i.lines
done

mv *.lines ./gravitycheck
