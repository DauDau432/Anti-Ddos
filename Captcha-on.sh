curl -X PUT "https://api.cloudflare.com/client/v4/zones/3490413be1c77a344f765f12f4463f20/firewall/rules/930fba41d8b7402d8485248be4dcb676" \
     -H "X-Auth-Email: aulax432@gmail.com" \
     -H "X-Auth-Key: c773770966510b528aff596071164bbd4b7b3" \
     -H "Content-Type: application/json" \
     --data '{
     "action": "challenge",
     "priority": 564,
     "paused": false,
     "description": "Managed Challenge Việt Nam",
     "filter": {
    "id": "1f99db421a2a48319e92e1d55905f556",
    "expression": "(http.user_agent contains \"iPhone\" and ip.geoip.country eq \"VN\" and http.request.version in {\"HTTP/2\" \"HTTP/3\"} and http.request.method in {\"GET\" \"POST\"} and http.host eq \"daukute.us\") or (http.user_agent contains \"Android\" and ip.geoip.country eq \"VN\" and http.request.version in {\"HTTP/2\" \"HTTP/3\"} and http.request.method in {\"GET\" \"POST\"} and http.host eq \"daukute.us\") or (http.user_agent contains \"Windows\" and ip.geoip.country eq \"VN\" and http.request.version in {\"HTTP/2\" \"HTTP/3\"} and http.request.method in {\"GET\" \"POST\"} and http.host eq \"daukute.us\") or (not http.request.uri.query contains \"?zarsrc=30\u0026utm_source=zalo\u0026utm_medium=zalo\u0026utm_campaign=zalo\") or (not http.user_agent contains \"Zalo\") or (not http.user_agent contains \"heck\") or (http.host eq \"xmplus.daukute.us\")",
    "paused": false,
    "description": "Managed Challenge Việt Nam"
  }
  }'
