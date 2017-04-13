echo Start creating volume Cassandra container...

docker run -d --volume /var/lib/cassandra/data --name cass-shared alpine echo Data Container

echo Volume Cassandra container successfully created

echo Start creating Cassandra container...

CASSANDRA_CID = docker run -d --volumes-from cass-shared --name cass cassandra:2.2

echo Cassandra container successfully created

echo Starting Cassandra cqlsh...

docker run -it --rm --link cass cassandra:2.2 cqlsh cass
