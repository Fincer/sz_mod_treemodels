#!/bin/bash

for i in *.png; do
convert "$i" -fuzz 35% -transparent white -fuzz 15% +transparent '#00ffff' "$i".nowhite
done