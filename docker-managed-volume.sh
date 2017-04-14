echo Creating docker-managed volume...

docker run -d -v /var/lib/cassandra/data --name docker-managed-cass-shared alpine echo Data Container

echo Docker-managed volume successfully created

docker inspect -f "{{json .Config.Volumes}}" docker-managed-cass-shared
