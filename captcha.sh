#!/bin/bash


apikey='95158140e9ec191d85ec776f94010ed174f07'
zone='afaff60b62f16380152a695b4e6f5df8'
email='speed4g.xyz@gmail.com'


countrylist_willcaptcha='/root/country.txt'


################### Captcha cho country:
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
#echo > $countrylist_willcaptcha
#echo > $countrylist_captchated

