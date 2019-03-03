#!/bin/bash
#ubuntu 18.04 for kernel network acceleration
echo "net.core.default_qdisc=fq" >> /etc/sysctl.conf
echo "net.ipv4.tcp_congestion_control=bbr" >> /etc/sysctl.conf
sysctl -p
lsmod | grep bbr
# choose encryption:none, protocol:auth_chain_a, obfs:plain
./ssr.sh
