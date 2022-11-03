./mvnw spring-boot:build-image

docker tag spring-petclinic:2.7.3 swadhinroutray/spring-petclinic
docker commit spring-petclinic:2.7.3 swadhinroutray/spring-petclinic
docker push swadhinroutray/spring-petclinic



