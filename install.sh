yum install net-tools -y && yum install screen -y && yum install jq -y
status.txt && wget https://raw.githubusercontent.com/vnuf182/hihi/main/status.txt
rm -rf auto.sh && wget https://raw.githubusercontent.com/vnuf182/hihi/main/auto.sh
screen bash /root/auto.sh
