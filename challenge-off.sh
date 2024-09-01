curl -X PUT "https://api.cloudflare.com/client/v4/zones/dc4829573a8be18a7f2de65921259f9e/firewall/rules/7c80c5f7abf84912b3a614609b4b6daa" \
     -H "X-Auth-Email: aulax432@gmail.com" \
     -H "X-Auth-Key: c773770966510b528aff596071164bbd4b7b3" \
     -H "Content-Type: application/json" \
     --data '{
     "action": "managed_challenge",
     "priority": 3064,
     "paused": false,
     "description": "Managed Challenge is in Asia",
     "filter": {
    "id": "a45a299fba344d1aacafcb3205c330a0",
    "expression": "(http.user_agent contains \"Mozilla/5.0 (Macintosh; Intel Mac OS\" and ip.geoip.country ne \"VN\" and ip.geoip.continent eq \"AS\" and cf.threat_score le 5 and http.request.version in {\"HTTP/2\" \"HTTP/3\"} and http.request.method in {\"GET\" \"POST\"}) or (http.user_agent contains \"Mozilla/5.0 (Windows NT\" and ip.geoip.country ne \"VN\" and ip.geoip.continent eq \"AS\" and cf.threat_score le 5 and http.request.version in {\"HTTP/2\" \"HTTP/3\"} and http.request.method in {\"GET\" \"POST\"}) or (http.user_agent contains \"Mozilla/5.0 (iPhone; CPU iPhone OS\" and ip.geoip.country ne \"VN\" and ip.geoip.continent eq \"AS\" and cf.threat_score le 5 and http.request.version in {\"HTTP/2\" \"HTTP/3\"} and http.request.method in {\"GET\" \"POST\"}) or (http.user_agent contains \"Mozilla/5.0 (Linux; Android\" and ip.geoip.country ne \"VN\" and ip.geoip.continent eq \"AS\" and cf.threat_score le 5 and http.request.version in {\"HTTP/2\" \"HTTP/3\"} and http.request.method in {\"GET\" \"POST\"})",
    "paused": false,
    "description": "Managed Challenge is in Asia"
  }
  }'
