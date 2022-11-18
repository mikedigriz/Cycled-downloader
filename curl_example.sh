#!/bin/bash
# New download example with curl for thiscatdoesnotexist.com 
# Set here how much you need pictures to download
pictures=5

counter=1
while [ $counter -le $pictures ]
do
curl 'https://thispersondoesnotexist.com/image' -H 'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0' -H 'Accept: image/avif,image/webp,*/*' -H 'Accept-Language: ru,en-US;q=0.5' -H 'Accept-Encoding: gzip, deflate, br' -H 'Referer: https://thispersondoesnotexist.com/' -H 'DNT: 1' -H 'Connection: keep-alive' -H 'Sec-Fetch-Dest: image' -H 'Sec-Fetch-Mode: no-cors' -H 'Sec-Fetch-Site: same-origin' -H 'If-Modified-Since: Fri, 18 Nov 2022 20:09:04 GMT' -H 'If-None-Match: "6377e660-8f3fa"' -H 'TE: trailers' --output $counter.jpeg
echo Progress[$counter/$pictures]
counter=$((counter+1))
# no required they already have request limit
sleep $[ ( $RANDOM % 5 )  + 1 ]
done
echo Done!


# Example curl for cat
#curl 'https://thiscatdoesnotexist.com/' \
#  -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8' \
#  -H 'Accept-Language: ru-RU,ru;q=0.7' \
#  -H 'If-None-Match: "6377e259-2e46b"' \
#  -H 'Sec-Fetch-Dest: document' \
#  -H 'Sec-Fetch-Mode: navigate' \
#  -H 'Sec-Fetch-Site: none' \
#  -H 'Sec-Fetch-User: ?1' \
#  -H 'Sec-GPC: 1' \
#  -H 'Upgrade-Insecure-Requests: 1' \
#  -H 'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36' \
#  -H 'sec-ch-ua: "Chrome";v="107", "Chromium";v="107", "Not=A?Brand";v="24"' \
#  -H 'sec-ch-ua-mobile: ?0' \
#  -H 'sec-ch-ua-platform: "Windows"' \
#  --compressed --output $counter.jpg
  
