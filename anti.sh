#!bin/sh
connect=$(netstat -alntp | grep :443 | wc -l)
if [ $connect -lt 50 ]
then
  cat /root/status.txt | grep "block" && bash <(curl -Ls https://raw.githubusercontent.com/DauDau432/Anti-Ddos/main/block-off.sh) && bash <(curl -Ls https://raw.githubusercontent.com/DauDau432/Anti-Ddos/main/Captcha-off.sh) && echo "allow" > /root/status.txt && clear && echo -e "ANTI DDOS OFF"
else
  cat /root/status.txt | grep "allow" && bash <(curl -Ls https://raw.githubusercontent.com/DauDau432/Anti-Ddos/main/block-on.sh) && bash <(curl -Ls https://raw.githubusercontent.com/DauDau432/Anti-Ddos/main/Captcha-on.sh) && echo "block" > /root/status.txt && clear && echo -e "ANTI DDOS ON"
fi
