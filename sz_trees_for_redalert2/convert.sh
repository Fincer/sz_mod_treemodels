#!/bin/bash

for i in *.png; do
    convert "$i" -channel Blue -evaluate set 0 +channel "$i".noblue && \
    convert "$i" "$i".noblue -compose difference -composite -separate -evaluate-sequence max -auto-level -negate "$i".maski && \
    convert "$i" "$i".maski -alpha off -compose Copy_Opacity -composite "$i".final && \
    convert "$i".final -channel A -threshold 75% "$i".final_noA && \
    rm "$i".noblue "$i".maski "$i".final && \
    mv "$i".final_noA "$i".final
done

mv *.final ./final/
rm *.png
cd ./final

for a in *.final; do
    mv -- "$a" "${a%.final}"
done
