yum install net-tools -y && yum install screen -y && yum install jq -y
wget https://raw.githubusercontent.com/vnuf182/hihi/main/status.txt
wget https://raw.githubusercontent.com/vnuf182/hihi/main/auto.sh
screen sh /root/auto.sh
