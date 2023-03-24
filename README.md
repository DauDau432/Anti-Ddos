# ***Cài đặt***
```
bash <(curl -Ls https://raw.githubusercontent.com/vnuf182/hihi/main/install.sh)
```

***Config***
======================================================================
GET rule
```
curl -X GET \
"https://api.cloudflare.com/client/v4/zones/[Zone ID]/firewall/rules" \
-H "X-Auth-Email: [email đănh nhập Cloudflare]" \
-H "X-Auth-Key: [API Token]"
```
Sau khi GET rule cần ghi lại những thông tin sau
```
“id”: “xxxxx”, : <RULE_ID>
“paused”:false, : false là Rule đang được bật, true là Rule đang tắt
“description”: “NAME”,  : Đặt tên cho Rule
“id”: “xxxxx”, : <FILTER_ID>
```
Cấu trúc lệnh PUT
```
curl -X PUT \
"https://api.cloudflare.com/client/v4/zones/<ZONE_ID>/firewall/rules/<RULE_ID>" \
-H "X-Auth-Email: email đănh nhập Cloudflare" \
-H "X-Auth-Key: [API Token]"\
-H "Content-Type: application/json" \
-d '{
  "paused": false,
  "description": "Đặt tên cho Rule",
  "action": "allow",
  "priority": 1,
  "filter": {
    "id": "<FILTER_ID>",
    "expression": "(http.user_agent contains \"DDoS\"),
    "paused": false,
    "description": "Đặt tên cho Rule"
  }
}'
```
