#!/bin/bash

# set here how much you need pictures to download
pictures=5

counter=1
while [ $counter -le $pictures ]
do
wget --user-agent="Mozilla/5.0 (Windows NT 6.1; WOW64; rv:26.0) Gecko/20190101 Firefox/27.0" thispersondoesnotexist.com/image -O $counter$(date '+_%Y-%m-%s').jpg
echo Progress[$counter/$pictures]
counter=$(($counter+1))
sleep $[ ( $RANDOM % 5 )  + 1 ]s
done
echo Done!
