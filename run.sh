docker run --name sonarqubeContainer --restart always -p 9000:9000 -d sonarqube
docker-compose -f deploy.docker-compose.yml up -d
