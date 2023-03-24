curl -X PUT \
"https://api.cloudflare.com/client/v4/zones/<ZONE_ID>/firewall/rules/<RULE_ID>" \
-H "X-Auth-Email: [email đănh nhập Cloudflare]" \
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
