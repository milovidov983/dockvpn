FROM ubuntu:precise
RUN echo deb http://archive.ubuntu.com/ubuntu/ precise main universe > /etc/apt/sources.list.d/precise.list
RUN apt-get update -q
RUN apt-get install -qy openvpn iptables socat curl
ADD ./bin /usr/local/sbin
ADD ./openvpn /etc/openvpn
VOLUME /etc/openvpn
EXPOSE 443/tcp 1194/udp 8080/tcp 80/tcp 8001/tcp 8002/tcp 8003/tcp 8888/tcp 5000/tcp 30001/tcp 30002/tcp 30003/tcp 30004/tcp 30005/tcp 
CMD run
