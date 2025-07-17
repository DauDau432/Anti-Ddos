#!/bin/sh
connect_443=$(netstat -alntp | grep :443 | wc -l)
connect_est=$(netstat -tun | grep ESTABLISHED | wc -l)

if [ $connect_443 -lt 50 ] && [ $connect_est -lt 50 ]; then
  cat /root/status.txt | grep "block" && bash <(curl -Ls https://raw.githubusercontent.com/DauDau432/Anti-Ddos/main/captcha-off.sh) && echo "allow" > /root/status.txt && clear && echo -e "ANTI DDOS OFF"
else
  cat /root/status.txt | grep "allow" && bash <(curl -Ls https://raw.githubusercontent.com/DauDau432/Anti-Ddos/main/captcha-on.sh) && echo "block" > /root/status.txt && clear && echo -e "ANTI DDOS ON"
fi
