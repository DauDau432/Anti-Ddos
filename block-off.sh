curl -X PUT "https://api.cloudflare.com/client/v4/zones/dc4829573a8be18a7f2de65921259f9e/firewall/rules/fc6762a6fe104550bb096b2e727e6052" \
     -H "X-Auth-Email: aulax432@gmail.com" \
     -H "X-Auth-Key: c773770966510b528aff596071164bbd4b7b3" \
     -H "Content-Type: application/json" \
     --data '{
     "action": "block",
     "priority": 500,
     "paused": true,
     "description": "Block is in Asia",
     "filter": {
    "id": "b15cd6141671454b924c56eec3b9d713",
    "expression": "(http.user_agent contains \"Mozilla/5.0 (iPhone; CPU iPhone OS\" and not ip.geoip.country in {\"CN\" \"DE\" \"HK\" \"ID\" \"JP\" \"KP\" \"KR\" \"SG\" \"TW\" \"US\" \"VN\"} and ip.geoip.continent eq \"AS\" and cf.threat_score le 5 and not http.request.version in {\"HTTP/2\" \"HTTP/3\"} and http.request.method in {\"GET\" \"POST\"}) or (http.user_agent contains \"Mozilla/5.0 (Linux; Android\" and not ip.geoip.country in {\"CN\" \"DE\" \"HK\" \"ID\" \"JP\" \"KP\" \"KR\" \"TW\" \"US\" \"VN\" \"SG\"} and ip.geoip.continent eq \"AS\" and cf.threat_score le 5 and http.request.version in {\"HTTP/2\" \"HTTP/3\"} and http.request.method in {\"POST\" \"GET\"}) or (http.user_agent contains \"Mozilla/5.0 (Windows NT\" and not ip.geoip.country in {\"CN\" \"DE\" \"HK\" \"ID\" \"JP\" \"KP\" \"KR\" \"SG\" \"TW\" \"US\" \"VN\"} and ip.geoip.continent eq \"AS\" and cf.threat_score le 5 and http.request.version in {\"HTTP/2\" \"HTTP/3\"} and http.request.method in {\"GET\" \"POST\"}) or (http.user_agent contains \"Mozilla/5.0 (Macintosh; Intel Mac OS\" and not ip.geoip.country in {\"CN\" \"DE\" \"HK\" \"ID\" \"JP\" \"KP\" \"KR\" \"SG\" \"TW\" \"US\" \"VN\"} and ip.geoip.continent eq \"AS\" and cf.threat_score le 5 and http.request.version in {\"HTTP/2\" \"HTTP/3\"} and http.request.method in {\"GET\" \"POST\"})",
    "paused": false,
    "description": "Block is in Asia"
  }
  }'
