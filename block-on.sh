curl -X PUT "https://api.cloudflare.com/client/v4/zones/ae0085b1847dc457e9e8c345e798560e/firewall/rules/8aa85a9bd5c348069477b578282c7716" \
     -H "X-Auth-Email: aulax432@gmail.com" \
     -H "X-Auth-Key: c773770966510b528aff596071164bbd4b7b3" \
     -H "Content-Type: application/json" \
     --data '{
     "action": "block",
     "priority": 578,
     "paused":false,
     "description": "Block All IP",
     "filter": {
    "id": "e9400d8671f5410fb00fd894bdaa5e84",
    "expression": "(not ip.geoip.country in {\"VN\"})",
    "paused": false,
    "description": "BLOCK QT"
  }
  }'
