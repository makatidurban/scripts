#!/bin/bash

# 更新系统包
echo "更新系统包..."
sudo apt update && sudo apt upgrade -y

# 安装 Squid
echo "安装 Squid..."
sudo apt install squid -y

# 备份原始配置文件
echo "备份原始配置文件..."
sudo cp /etc/squid/squid.conf /etc/squid/squid.conf.bak

# 配置 Squid 以允许所有 IPv4 客户端
echo "配置 Squid..."
cat <<EOL | sudo tee /etc/squid/squid.conf
http_port 3128
acl localnet src 0.0.0.0/0
http_access allow localnet
http_access deny all
EOL

# 重启 Squid 服务
echo "重启 Squid 服务..."
sudo systemctl restart squid

# 设置 Squid 在启动时自动开启
echo "设置 Squid 在启动时自动开启..."
sudo systemctl enable squid

echo "HTTP 代理安装并配置完成！"
echo "您可以通过以下地址访问代理：http://<您的服务器IP>:3128"
