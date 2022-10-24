#!/bin/bash


apikey='95158140e9ec191d85ec776f94010ed174f07'
zone='afaff60b62f16380152a695b4e6f5df8'
email='speed4g.xyz@gmail.com'


################### Cho ra full thông tin lan dau tien:

fullrawinfo=`curl --silent -X GET "https://api.cloudflare.com/client/v4/zones/$zone/firewall/access_rules/rules?match=all" \
     -H "X-Auth-Email: $email" \
     -H "X-Auth-Key: $apikey" \
     -H "Content-Type: application/json"`
fullinfo=`echo "$fullrawinfo"|jq .`

################### Cho ra tổng số rule lau dau tiên:
numberrule=`echo "$fullinfo"| grep "total_count"|awk {'print $2'}|  tr -dc '0-9'`
#echo "Tong rule la: $numberrule"


ten_file_chua_list='/root/idrulelist.txt'

rulebandau=$numberrule
so_lan_vong_lap_lon=0
donglon=1
while [ $numberrule -gt $so_lan_vong_lap_lon ]
do

	################### Cho ra full thông tin khac nhau trong moi vong lap lớn:

	fullrawinfo=`curl --silent -X GET "https://api.cloudflare.com/client/v4/zones/$zone/firewall/access_rules/rules?match=all" \
	     -H "X-Auth-Email: $email" \
	     -H "X-Auth-Key: $apikey" \
	     -H "Content-Type: application/json"`
	fullinfo=`echo "$fullrawinfo"|jq .`
	################### Cho ra full ID Rules khac nhau trong moi vong lap lớn:
	idrulelist=`echo "$fullinfo" | grep '"id":' |sed "/.*$zone.*/d" | awk {'print $2'}| tr -d ','|tr -d '"'`
	#echo "Danh sach ID la:
	#$idrulelist"
	echo "$idrulelist" > $ten_file_chua_list
	echo "`cat $ten_file_chua_list | grep .`" > $ten_file_chua_list
	so_dong_file_chua_list=`cat $ten_file_chua_list | grep . | wc -l`
	################### Xoa toan bo ID Rules:



	dong=1
	while [ $dong -le $so_dong_file_chua_list ]
	do

	################### Xóa id rule hiện tại:
	delaytime=$(( $RANDOM % 9 ))
	idrulehientai=$(awk " NR == $dong " $ten_file_chua_list)

	(sleep $delaytime; curl --silent -X DELETE "https://api.cloudflare.com/client/v4/zones/$zone/firewall/access_rules/rules/$idrulehientai" \
			-H "X-Auth-Email: $email" \
			-H "X-Auth-Key: $apikey" \
			-H "Content-Type: application/json" >/dev/null 2>&1 &) &
	echo "Rule thu $dong cua trang $donglon da xoa la: $idrulehientai"

	#

	dong=$((dong + 1))
	done
donglon=$((donglon + 1))
sleep 2
################### Cho ra tổng số rule lau dau tiên:
numberrule=`echo "$fullinfo"| grep "total_count"|awk {'print $2'}|  tr -dc '0-9'`
# Nếu rule vẫn lớn hơn 0 thì tiếp tục lặp
echo "Removed rule $((rulebandau-numberrule)). The remaining rules $numberrule"
done



