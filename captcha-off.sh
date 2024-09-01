curl -X PUT "https://api.cloudflare.com/client/v4/zones/dc4829573a8be18a7f2de65921259f9e/firewall/rules/adb451c64204498d986435b508aa8a0e" \
     -H "X-Auth-Email: aulax432@gmail.com" \
     -H "X-Auth-Key: c773770966510b528aff596071164bbd4b7b3" \
     -H "Content-Type: application/json" \
     --data '{
     "action": "managed_challenge",
     "priority": 564,
     "paused": true,
     "description": "Managed Challenge is in Asia",
     "filter": {
    "id": "bf916bc3ff084f32b44d9ffac1fec3da",
    "expression": "(http.user_agent contains \"Mozilla/5.0 (iPhone; CPU iPhone OS\" and ip.geoip.country in {\"CN\" \"DE\" \"HK\" \"ID\" \"JP\" \"KP\" \"KR\" \"SG\" \"TW\" \"US\" \"VN\"} and ip.geoip.continent eq \"AS\" and cf.threat_score le 5 and http.request.version in {\"HTTP/2\" \"HTTP/3\"} and http.request.method in {\"GET\" \"POST\"}) or (http.user_agent contains \"Mozilla/5.0 (Linux; Android\" and ip.geoip.country in {\"CN\" \"DE\" \"HK\" \"ID\" \"JP\" \"KP\" \"KR\" \"TW\" \"US\" \"VN\" \"SG\"} and ip.geoip.continent eq \"AS\" and cf.threat_score le 5 and http.request.version in {\"HTTP/2\" \"HTTP/3\"} and http.request.method in {\"POST\" \"GET\"}) or (http.user_agent contains \"Mozilla/5.0 (Windows NT\" and ip.geoip.country in {\"CN\" \"DE\" \"HK\" \"ID\" \"JP\" \"KP\" \"KR\" \"SG\" \"TW\" \"US\" \"VN\"} and ip.geoip.continent eq \"AS\" and cf.threat_score le 5 and http.request.version in {\"HTTP/2\" \"HTTP/3\"} and http.request.method in {\"GET\" \"POST\"}) or (http.user_agent contains \"Mozilla/5.0 (Macintosh; Intel Mac OS\" and ip.geoip.country in {\"CN\" \"DE\" \"HK\" \"ID\" \"JP\" \"KP\" \"KR\" \"SG\" \"TW\" \"US\" \"VN\"} and ip.geoip.continent eq \"AS\" and cf.threat_score le 5 and http.request.version in {\"HTTP/2\" \"HTTP/3\"} and http.request.method in {\"GET\" \"POST\"})",
    "paused": false,
    "description": "Managed Challenge is in Asia"
  }
  }'
