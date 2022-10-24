#!/bin/bash
apikey='c773770966510b528aff596071164bbd4b7b3'
zone='ae0085b1847dc457e9e8c345e798560e'
email='aulax432@gmail.com'
countrylist_willcaptcha='/root/country.txt'
ten_file_chua_list=$countrylist_willcaptcha
echo "`cat $ten_file_chua_list | grep .`" > $ten_file_chua_list
so_dong_file_chua_list=`cat $ten_file_chua_list | grep . | wc -l`
dong=1
while [ $dong -le $so_dong_file_chua_list ]
do
delaytime=$(( $RANDOM % 9 ))
countrycaptcha_hientai=$(awk " NR == $dong " $ten_file_chua_list)
(sleep $delaytime; curl -sSX POST "https://api.cloudflare.com/client/v4/zones/$zone/firewall/access_rules/rules" \
-H "X-Auth-Email: $email" \
-H "X-Auth-Key: $apikey" \
-H "Content-Type: application/json" \
--data "{\"mode\":\"challenge\",\"configuration\":{\"target\":\"country\",\"value\":\"$countrycaptcha_hientai\"},\"notes\":\"ANTI DDOS BY ADMIN SPEED4G.ME\"}" >/dev/null 2>&1 & )&
echo "Da bat captcha country: $countrycaptcha_hientai"
dong=$((dong + 1))
done
