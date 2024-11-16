# scripts
easy script

# cmd proxy
curl -s https://raw.githubusercontent.com/makatidurban/scripts/main/tinyproxy_1.sh | bash

# squid
curl -s https://raw.githubusercontent.com/makatidurban/scripts/refs/heads/main/squid.sh | bash

## disable ipv6
vi /etc/default/grub \n
GRUB_CMDLINE_LINUX_DEFAULT="quiet ipv6.disable=1"
sudo update-grub
sudo reboot

# email
curl -s https://raw.githubusercontent.com/maikka39/MailServerSetup/master/setup_mail_server.sh | bash

# email add_domain_dkim
curl -s https://raw.githubusercontent.com/maikka39/MailServerSetup/master/add_domain_dkim.sh | bash
