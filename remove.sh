#!/bin/bash
apikey='c773770966510b528aff596071164bbd4b7b3'
zone='ae0085b1847dc457e9e8c345e798560e'
email='aulax432@gmail.com'
fullrawinfo=`curl --silent -X GET "https://api.cloudflare.com/client/v4/zones/$zone/firewall/access_rules/rules?match=all" \
     -H "X-Auth-Email: $email" \
     -H "X-Auth-Key: $apikey" \
     -H "Content-Type: application/json"`
fullinfo=`echo "$fullrawinfo"|jq .`
numberrule=`echo "$fullinfo"| grep "total_count"|awk {'print $2'}|  tr -dc '0-9'`
ten_file_chua_list='/root/idrulelist.txt'
rulebandau=$numberrule
so_lan_vong_lap_lon=0
donglon=1
while [ $numberrule -gt $so_lan_vong_lap_lon ]
do	
	fullrawinfo=`curl --silent -X GET "https://api.cloudflare.com/client/v4/zones/$zone/firewall/access_rules/rules?match=all" \
	     -H "X-Auth-Email: $email" \
	     -H "X-Auth-Key: $apikey" \
	     -H "Content-Type: application/json"`
	fullinfo=`echo "$fullrawinfo"|jq .`
	idrulelist=`echo "$fullinfo" | grep '"id":' |sed "/.*$zone.*/d" | awk {'print $2'}| tr -d ','|tr -d '"'`
	echo "$idrulelist" > $ten_file_chua_list
	echo "`cat $ten_file_chua_list | grep .`" > $ten_file_chua_list
	so_dong_file_chua_list=`cat $ten_file_chua_list | grep . | wc -l`
	dong=1
	while [ $dong -le $so_dong_file_chua_list ]
	do
	delaytime=$(( $RANDOM % 9 ))
	idrulehientai=$(awk " NR == $dong " $ten_file_chua_list)
	(sleep $delaytime; curl --silent -X DELETE "https://api.cloudflare.com/client/v4/zones/$zone/firewall/access_rules/rules/$idrulehientai" \
			-H "X-Auth-Email: $email" \
			-H "X-Auth-Key: $apikey" \
			-H "Content-Type: application/json" >/dev/null 2>&1 &) &
	echo "Rule thu $dong cua trang $donglon da xoa la: $idrulehientai"
	dong=$((dong + 1))
	done
donglon=$((donglon + 1))
sleep 3
numberrule=`echo "$fullinfo"| grep "total_count"|awk {'print $2'}|  tr -dc '0-9'`
echo "Removed rule $((rulebandau-numberrule)). The remaining rules $numberrule"
done



