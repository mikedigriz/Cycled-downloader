#!/bin/bash
x=1
while [ $x -le 100000 ]
do
wget https://thispersondoesnotexist.com/image
x=$(( x + 1))
done
