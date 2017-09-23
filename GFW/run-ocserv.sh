docker rm ocserv
docker run -d --privileged --name ocserv -v /root/ocserv-docker/ocserv:/etc/ocserv -p 443:443/tcp wppurking/ocserv
