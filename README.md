# Chương trình quản lý auto on/off rule cloudflare
# ***Cài đặt***
```
wget https://raw.githubusercontent.com/DauDau432/Anti-Ddos/main/install-api.sh
```
```
bash install.sh
```
***Config***
======================================================================
GET rule
```
bash <(curl -Ls https://raw.githubusercontent.com/DauDau432/Anti-Ddos/main/get-rules.sh)
```

Cấu trúc GET rules
```
curl -X GET \
"https://api.cloudflare.com/client/v4/zones/[Zone ID]/firewall/rules" \
-H "X-Auth-Email: [email đăng nhập Cloudflare]" \
-H "X-Auth-Key: [API Token]"
```

Sau khi GET rules cần ghi lại những thông tin sau và điền vào 2 mẫu file on off
```
“id”: “xxxxx”, : <RULE_ID>
“description”: “NAME_rule”,  : Đặt tên cho Rule
"action": "challenge",
"priority": 564,
“paused”: false, : false là api đã bật Rule trên cloudflare đang tắt, true là api đã tắt Rule trên cloudflare đang bật
“id”: “xxxxx”, : <FILTER_ID>
"expression": "(ip.geoip.country eq \"VN\" and http.user_agent contains \"heck\")",
```

Cấu trúc lệnh PUT
```
curl -X PUT "https://api.cloudflare.com/client/v4/zones/<Zones_ID>/firewall/rules/<RULE_ID>" \
     -H "X-Auth-Email: [email đăng nhập Cloudflare]" \
     -H "X-Auth-Key: [API_Token]" \
     -H "Content-Type: application/json" \
     --data '{
     "action": "challenge",
     "priority": 564,
     "paused": true,
     "description": "NAME_rule",
     "filter": {
    "id": "<FILTER_ID>",
    "expression": "(ip.geoip.country eq \"VN\" and http.user_agent contains \"heck\")",
    "paused": false,
    "description": "NAME_rule"
  }
  }'
```
