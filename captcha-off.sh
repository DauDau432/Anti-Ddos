curl -X PUT "https://api.cloudflare.com/client/v4/zones/db0036a57189911a561e6326e350ea09/firewall/rules/bc8e7716b2bf4c0f9db1ab1318d85c20" \
     -H "X-Auth-Email: hoanghpqk189@gmail.com" \
     -H "X-Auth-Key: 4aa920ab578ca860209a05303f794672a605c" \
     -H "Content-Type: application/json" \
     --data '{
     "action": "managed_challenge",
     "priority": 3000,
     "paused": true,
     "description": "captcha full trừ /api /admin h2cloud.vn",
     "filter": {
    "id": "fedccd2ad17a496e8600121c12a46af8",
    "expression": "(http.host eq \"h2cloud.vn\" and not http.request.uri.path contains \"api\") or (http.host eq \"h2cloud.vn\" and not http.request.uri.path contains \"admin\")",
    "paused": false,
    "description": "captcha full trừ /api /admin h2cloud.vn"
  }
  }'
