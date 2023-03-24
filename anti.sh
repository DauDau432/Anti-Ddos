#!bin/sh
connect=$(netstat -alntp | grep :443 | wc -l)
if [ $connect -lt 100 ]
then
  cat /root/status.txt | grep "block" && bash <(curl -Ls https://raw.githubusercontent.com/vnuf182/hihi/main/block-off.sh) && echo "allow" > /root/status.txt && clear && echo -e "ANTI DDOS OFF"
else
  cat /root/status.txt | grep "allow" && bash <(curl -Ls https://raw.githubusercontent.com/vnuf182/hihi/main/block-on.sh) && echo "block" > /root/status.txt && clear && echo -e "ANTI DDOS ON"
fi
