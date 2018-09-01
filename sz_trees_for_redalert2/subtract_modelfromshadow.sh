#!/bin/bash

for i in $(find /home/fincer/Situation_Zero_trees_source/rendaukset/256/final/ -name *.png); do

o="$(echo $i | sed 's=.*/==')"

A=/home/fincer/Situation_Zero_trees_source/rendaukset/256/final/$o
B=/home/fincer/Situation_Zero_trees_source/rendaukset/256/final_shadow/processed/nowhite/${o%.png}.nowhite
C=/home/fincer/Situation_Zero_trees_source/rendaukset/256/final_shadow/processed/nowhite/subtracted/${o%.png}.sbt
D=/home/fincer/Situation_Zero_trees_source/rendaukset/256/final_shadow/processed/nowhite/subtracted/${o%.png}.maski

composite -compose Dst_Out $A $B -alpha Set $C
convert $C -fuzz 100% -fill '#00ffff' -opaque '#00ffff' $D
rm $C

done

cd /home/fincer/Situation_Zero_trees_source/rendaukset/256/final_shadow/processed/nowhite/subtracted/
for filename in *.maski; do newname=`echo $filename | sed 's/\.maski$/_shadow.png/g'`; mv $filename $newname; done