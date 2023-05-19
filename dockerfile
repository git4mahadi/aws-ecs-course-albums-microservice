FROM openjdk:17-alpine
VOLUME /tmp 
COPY target/albums-service.jar albums-service.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/albums-service.jar"]
