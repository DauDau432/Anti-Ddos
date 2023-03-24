curl -X PUT "https://api.cloudflare.com/client/v4/zones/3490413be1c77a344f765f12f4463f20/firewall/rules/5818c02087a0422081340424468798b2" \
     -H "X-Auth-Email: aulax432@gmail.com" \
     -H "X-Auth-Key: c773770966510b528aff596071164bbd4b7b3" \
     -H "Content-Type: application/json" \
     --data '{
     "action": "block",
     "priority": 500,
     "paused":true,
     "description": "Block quốc tế",
     "filter": {
    "id": "cff5e0f781c14510b9d52e2fbdeb5123",
    "expression": "(not ip.geoip.country in {\"VN\"})",
    "paused": false,
    "description": "Block quốc tế"
  }
  }'
