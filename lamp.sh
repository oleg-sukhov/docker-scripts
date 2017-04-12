echo Starting lamp container

docker run -d -p 80:80 --name lamp-test tutum/lamp

docker top lamp-test
