#!/bin/bash

yum install tinyproxy -y

sed -i 's/Allow 127.0.0.1/#Allow 127.0.0.1/g' /etc/tinyproxy/tinyproxy.conf
sed -i 's/#DisableViaHeader Yes/DisableViaHeader Yes/g' /etc/tinyproxy/tinyproxy.conf

systemctl start tinyproxy.service
#export http_proxy=http://4xx3:8888/
#export https_proxy=http:/xxx:8888/
#source /etc/profile
iptables -I INPUT -p tcp --dport 8888 -j ACCEPT