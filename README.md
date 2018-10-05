# OpenVPN for Docker

**the original project - [jpetazzo/dockvpn](https://github.com/jpetazzo/dockvpn)** and it has its own [automatic build on dockerhub](https://hub.docker.com/r/jpetazzo/dockvpn/). 

 
Quick instructions:

```bash
CID=$(docker run -d --privileged -p 1194:1194/udp -p 443:443/tcp  -p 44044:44044/tcp -p 80:80/tcp  -p 8001:8001/tcp  -p 8002:8002/tcp  -p 8003:8003/tcp  -p 8888:8888/tcp  -p 5000:5000/tcp  -p 30001:30001/tcp  -p 30002:30002/tcp  -p 30003:30003/tcp  -p 30004:30004/tcp  -p 30005:30005/tcp  milovidovvasya/openvpn)
docker run -t -i -p 8080:8080 --volumes-from $CID milovidovvasya/openvpn serveconfig
```

