curl -X PUT "https://api.cloudflare.com/client/v4/zones/ae0085b1847dc457e9e8c345e798560e/firewall/rules/dc2a1d585f6d4062b79389208f648417" \
     -H "X-Auth-Email: aulax432@gmail.com" \
     -H "X-Auth-Key: c773770966510b528aff596071164bbd4b7b3" \
     -H "Content-Type: application/json" \
     --data '{
     "action": "challenge",
     "priority": 1156,
     "paused":false,
     "description": "CaptCha Việt",
     "filter": {
    "id": "65fcb9af5e0b496b8b9d082a94a05d0c",
    "expression": "(ip.geoip.country in {\"VN\"})",
    "paused": false,
    "description": "BLOCK QT"
  }
  }'
