#!/bin/bash

for i in *.png; do
    convert $i -fill white -strokewidth 1 -draw "line 0,100 200,100" -draw "line 100,0 100,200"  $i.lines
done

mv *.lines ./gravitycheck
