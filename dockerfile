FROM openjdk:17-alpine
VOLUME /tmp 
COPY target/aws-ecs-albums-service.jar aws-ecs-albums-service.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/aws-ecs-albums-service.jar"]
