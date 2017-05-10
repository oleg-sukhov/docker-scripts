# // sample of container with closed network type
# docker run --rm --net none alpine:latest ip addr

# // sample of container with bridge network type (default type)
#docker run --rm --net bridge alpine:latest ip addr



# // sample of exposing container's ports
# docker run -d --name dawson -p 5000 -p 6000 -p 7000 dockerinaction/ch5_expose
# docker port dawson
# docker run -d --name philbin --expose 8000 -P dockerinaction/ch5_expose

# // sample of connectioing containers to the same network bridge
# docker run -it --rm dockerinaction/ch5_nmap -sS -p 3333 172.17.0.0/24

# // disabling inter-container communication
# docker -d --icc=false

# // sample of defining custom bridge instead of default
# docker -d --bridge(-b) mybridge

# // sample of joined container types
# docker run -d --name brady --net none alpine:latest nc -l 127.0.0.01:3333
# docker run -it --net container:brady alpine:latest netstat -al

# // sample of creating open network container
docker run --rm --net host alpine:latest ip addr
