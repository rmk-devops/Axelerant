Instructions
============
docker-compose is an ideal solution as we have more than one container\
we need\
   1. nginx\
   2. Python to host Flask app\
containers.\

Code folder contains the code of sample Flask app which will be mounted as a docker volume to the container, flask which will be created by using docker image we build using Dockerfile.\

nginx.conf contains nginx configuration which acts a reverse proxy for flask container and it will be mounted as a volume to nginx container.\

run docker-compose.yml using below command\
 $ docker-compose up -d\
 It will create flask,nginx containers,mount the file as volumes and connect both the containers together by using a network\

 Flask app can be accessed by using serverip or FQDN\

 Scaling of services can be done as below\
 $ docker-compose scale flask=2 nginx=2