#!/bin/bash

for i in *.png; do
    convert "$i" -fuzz 20% -transparent blue "$i".finalsh
done

mv *.finalsh ./final_shadow/
rm *.png
cd ./final_shadow

for a in *.finalsh; do
    mv -- "$a" "${a%.finalsh}"
done
