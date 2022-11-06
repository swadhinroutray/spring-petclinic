
git clone 

sysctl -w vm.max_map_count=524288
sysctl -w fs.file-max=131072

docker-compose -f deploy.docker-compose.yml up -d
