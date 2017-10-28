#!/bin/bash
docker run -d --privileged --net=host -v /root/pptp/chap-secrets:/etc/ppp/chap-secrets mobtitude/vpn-pptp
docker run -d -p 500:500/udp -p 4500:4500/udp -p 1701:1701/tcp -e PSK=woaiyixi -e USERNAME=tangzhankun -e PASSWORD=woaiyixi siomiz/softethervpn
docker run -d -p 1984:1984 oddrationale/docker-shadowsocks -s 0.0.0.0 -p 1984 -k woaiyixi -m aes-256-cfb
cd /root
git clone https://github.com/tangzhankun/ocserv-docker.git
docker run -d --privileged --name ocserv -v /root/ocserv-docker/ocserv:/etc/ocserv -p 443:443/tcp wppurking/ocserv
