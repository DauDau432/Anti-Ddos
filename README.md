# ***Cài đặt***
```
bash <(curl -Ls https://raw.githubusercontent.com/vnuf182/hihi/main/install.sh)
```

***Config***
======================================================================
GET rule
```
bash <(curl -Ls https://raw.githubusercontent.com/vnuf182/hihi/main/get-rules.sh)
```
Cấu trúc GET rules
```
curl -X GET \
"https://api.cloudflare.com/client/v4/zones/[Zone ID]/firewall/rules" \
-H "X-Auth-Email: [email đănh nhập Cloudflare]" \
-H "X-Auth-Key: [API Token]"
```
Sau khi GET rules cần ghi lại những thông tin sau
```
“id”: “xxxxx”, : <RULE_ID>
“paused”:false, : false là Rule đang được bật, true là Rule đang tắt
“description”: “NAME”,  : Đặt tên cho Rule
“id”: “xxxxx”, : <FILTER_ID>
```
Cấu trúc lệnh PUT
```
curl -X PUT "https://api.cloudflare.com/client/v4/zones/<Zones ID>/firewall/rules/<RULE_ID>" \
     -H "X-Auth-Email: [email đănh nhập Cloudflare]" \
     -H "X-Auth-Key: [API Token]" \
     -H "Content-Type: application/json" \
     --data '{
     "action": "challenge",
     "priority": 564,
     "paused": true,
     "description": "NAME rule",
     "filter": {
    "id": "<FILTER_ID>",
    "expression": "(ip.geoip.country eq \"VN\" and http.user_agent contains \"heck\")",
    "paused": false,
    "description": "NAME rule"
  }
  }'
```
