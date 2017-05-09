# // sample of container with closed network type
# docker run --rm --net none alpine:latest ip addr

# // sample of container with bridge network type (default type)
docker run --rm --net bridge alpine:latest ip addr 
