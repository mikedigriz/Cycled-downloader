#!/bin/bash
x=1
while [ $x -le 100000 ]
do
wget --user-agent="Mozilla/5.0 (Windows NT 6.1; WOW64; rv:26.0) Gecko/20190101 Firefox/27.0" thispersondoesnotexist.com/image -O $(date '+%Y-%m-%s').jpg
sleep $[ ( $RANDOM % 5 )  + 1 ]s
done
