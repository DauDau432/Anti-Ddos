curl -X PUT \
"https://api.cloudflare.com/client/v4/zones/3490413be1c77a344f765f12f4463f20/firewall/rules/930fba41d8b7402d8485248be4dcb676" \
-H "X-Auth-Email: aulax432@gmail.com" \
-H "X-Auth-Key: c773770966510b528aff596071164bbd4b7b3"\
-H "Content-Type: application/json" \
-d '{
  "paused": false,
  "description": "Captcha Việt Nam",
  "action": "allow",
  "priority": 1,
  "filter": {
    "id": "1f99db421a2a48319e92e1d55905f556",
    "expression": "(http.user_agent contains \"DDoS\"),
    "paused": false,
    "description": "Captcha Việt Nam"
  }
}'
