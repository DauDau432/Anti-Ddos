## Chương trình quản lý auto on/off rules cloudflare

### ***Config***

GET rules
```
bash <(curl -Ls https://raw.githubusercontent.com/DauDau432/Anti-Ddos/main/get-rules.sh)
```

Cấu trúc GET rules
```
curl -X GET \
"https://api.cloudflare.com/client/v4/zones/<zones id>/firewall/rules" \
-H "X-Auth-Email: <email đăng nhập cloudflare>" \
-H "X-Auth-Key: <api token>"
```

Cấu trúc lệnh PUT
```
curl -X PUT "https://api.cloudflare.com/client/v4/zones/<zones id>/firewall/rules/<id rules>" \
     -H "X-Auth-Email: <email đăng nhập cloudflare>" \
     -H "X-Auth-Key: <api token>" \
     -H "Content-Type: application/json" \
     --data '{
     "action": "<hành động của rules>",
     "priority": <độ ưu tiên của rules>,
     "paused": <trạng thái toàn bộ rules>,
     "description": "<mô tả rules tổng thể>",
     "filter": {
    "id": "<id filter>",
    "expression": "<biểu thức trong filter>",
    "paused": <trạng thái của filter>,
    "description": "<mô tả của filter riêng lẻ>"
  }
  }'
```

-------------------------------------------------------------------

### ***Cài đặt***
```
wget https://raw.githubusercontent.com/DauDau432/Anti-Ddos/main/install-api.sh
```
```
bash install-api.sh
```
