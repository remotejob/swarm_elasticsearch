docker run -p 9200:9200 -p 9300:9300 elasticsearch:alpine -Etransport.host=0.0.0.0 -Ediscovery.zen.minimum_master_nodes=1

docker stack deploy --compose-file docker-compose.yml valcri_test

