#!/bin/bash
#Script auto create trial user SSH
#yg akan expired setelah 1 hari

Login=trial-`</dev/urandom tr -dc X-Z0-9 | head -c4`
mumetndase="1"
Pass=`</dev/urandom tr -dc a-f0-9 | head -c9`
IP=`ifconfig venet0:0| awk 'NR==2 {print $2}'| awk -F: '{print $2}'`
useradd -e `date -d "$mumetndase days" +"%Y-%m-%d"` -s /bin/false -M $Login
echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
echo -e "Login: $Login Password: $Pass\nIP: $IP Port: 90, 143, 443"
echo -e "\e[1;33;44mIlhamGanteng\e[0m"
