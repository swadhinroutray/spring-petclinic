echo "System Limits Established"

sysctl -w vm.max_map_count=524288
sysctl -w fs.file-max=131072

echo "Starting Containers"

docker-compose -f deploy.docker-compose.yml up -d

echo "Expose SonarQube Server Port for HTTP requests from Jenkins"
ufw allow 9000
