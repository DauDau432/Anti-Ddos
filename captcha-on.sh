curl -X PUT "https://api.cloudflare.com/client/v4/zones/dc4829573a8be18a7f2de65921259f9e/firewall/rules/adb451c64204498d986435b508aa8a0e" \
     -H "X-Auth-Email: aulax432@gmail.com" \
     -H "X-Auth-Key: c773770966510b528aff596071164bbd4b7b3" \
     -H "Content-Type: application/json" \
     --data '{
     "action": "managed_challenge",
     "priority": 3000,
     "paused": false,
     "description": "captcha full trừ /api /admin h2cloud.vn",
     "filter": {
    "id": "fedccd2ad17a496e8600121c12a46af8",
    "expression": "(http.host eq \"h2cloud.vn\" and not http.request.uri.path contains \"api\") or (http.host eq \"h2cloud.vn\" and not http.request.uri.path contains \"admin\")",
    "paused": false,
    "description": "captcha full trừ /api /admin h2cloud.vn"
  }
  }'
