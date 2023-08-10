echo -e "\e[31m[i]\e[0m \e[34mIniciando... [github.com/ShiftSad/Firewall-Defender]\e[0m"

echo -e "\e[31m[i]\e[0m \e[34mResetando regras...\e[0m"
sudo service netfilter-persistent flush

echo -e "\e[31m[i]\e[0m \e[34mBaixando regras...\e[0m"
echo -e "\e[31m[i]\e[0m \e[34mBaixando IPv4\e[0m"
wget -q -P /etc/iptables/ https://raw.githubusercontent.com/ShiftSad/Firewall-Defender/master/rules.v4

echo -e "\e[31m[i]\e[0m \e[34mBaixando IPv6\e[0m"
wget -q -P /etc/iptables/ https://raw.githubusercontent.com/ShiftSad/Firewall-Defender/master/rules.v6

echo -e "\e[31m[i]\e[0m \e[34mAplicando regras...\e[0m"
sudo service netfilter-persistent reload

echo -e "\e[31m[i]\e[0m \e[34mConcluído!\e[0m"
