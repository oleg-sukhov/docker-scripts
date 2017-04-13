echo Start pulling busybox image
docker pull busybox:latest

echo Start saving busybox into busybox.tar file
docker save -o busybox.tar busybox:latest

echo Removing image
docker rmi busybox

echo Loading image from busybox.tar
docker load -i busybox.tar
