export DOTOKEN=xxxxx
docker-machine create --driver digitalocean --digitalocean-image ubuntu-16-04-x64 --digitalocean-size 1gb --digitalocean-access-token $DOTOKEN swarm-master
docker-machine env swarm-master
docker-machine ls
docker-machine create --driver digitalocean --digitalocean-image ubuntu-16-04-x64 --digitalocean-size 1gb  --digitalocean-access-token $DOTOKEN swarm-slave0
#docker-machine create --driver digitalocean --digitalocean-image ubuntu-16-04-x64 --digitalocean-access-token $DOTOKEN swarm-slave1
docker-machine ssh swarm-master


sysctl -w vm.max_map_count=262144
fallocate -l 2G /swapfile
chmod 600 /swapfile
mkswap /swapfile

swapon /swapfile


echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab

