
# aws-ecs-albums-service

## build docker image
docker build --platform=linux/amd64 -f Dockerfile -t aws-ecs-albums-service .

## tagging a docker image
docker tag aws-ecs-albums-service:latest mahadi791/aws-ecs-albums-service:23v5.1

## upload docker image to docker hub
docker push mahadi791/aws-ecs-albums-service:23v5.1

## run from server
sudo docker run --name aws-ecs-albums-service-v1 --platform linux/amd64 -e 'spring.profiles.active=prod' -d -p 8081:8081 mahadi791/aws-ecs-albums-service:23v5.1
