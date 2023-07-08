curl -X PUT "https://api.cloudflare.com/client/v4/zones/3490413be1c77a344f765f12f4463f20/firewall/rules/5818c02087a0422081340424468798b2" \
     -H "X-Auth-Email: aulax432@gmail.com" \
     -H "X-Auth-Key: c773770966510b528aff596071164bbd4b7b3" \
     -H "Content-Type: application/json" \
     --data '{
     "action": "block",
     "priority": 500,
     "paused": true,
     "description": "Block quốc tế",
     "filter": {
    "id": "cff5e0f781c14510b9d52e2fbdeb5123",
    "expression": "(not ip.geoip.country in {\"VN\"} and http.user_agent contains \"iPhone\" and http.request.version in {\"HTTP/2\"                    \"HTTP/3\"} and http.request.method in {\"GET\" \"POST\"} and http.host eq \"daukute.us\") or (not ip.geoip.country in {\"VN\"} and http.                   user_agent contains \"Android\" and http.request.version in {\"HTTP/2\" \"HTTP/3\"} and http.request.method in {\"GET\" \"POST\"} and htt                   p.host eq \"daukute.us\") or (not ip.geoip.country in {\"VN\"} and http.user_agent contains \"Windows\" and http.request.version in {\"HT                   TP/2\" \"HTTP/3\"} and http.request.method in {\"GET\" \"POST\"} and http.host eq \"daukute.us\")",
    "paused": false,
    "description": "Block quốc tế"
  }
  }'
