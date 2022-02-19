#!/bin/bash
if [ "${EUID}" -ne 0 ]; then
		echo "You need to run this script as root"
		exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
		echo "OpenVZ is not supported"
		exit 1
fi
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ifconfig.co);
echo "Checking VPS"
clear
cd /root
wget https://raw.githubusercontent.com/liuuufey/socks5/main/socks5-deb.sh;chmod +x socks5-deb.sh;./socks5-deb.sh;rm -rf socks5-deb.sh
