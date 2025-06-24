docker run --rm hello-world
docker ps
docker ps -a
ls
clear
ls
pwd
mkdir service2
ls
scp -r "C:\Users\Himanshu Yadav\Downloads\SourceCode\service_2" azureuser@172.172.163.136:/home/azureuser/service2
scp -i "C:\Users\Himanshu Yadav\Downloads\Docker-VM_key (1).pem" `
    -r "C:\Users\Himanshu Yadav\Downloads\SourceCode\service_2" `
scp -i "C:\Users\Himanshu Yadav\Downloads\Docker-VM_keyy.pem" ` 
    -r "C:\Users\Himanshu Yadav\Downloads\SourceCode\service_2" `
ls
cd service2/
la
cd service_2/
ls
ls
clear
sudo apt-get update
sudo apt-get install -y   ca-certificates   curl   gnupg   lsb-release
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg |   sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo   "deb [arch=$(dpkg --print-architecture) \
       signed-by=/etc/apt/keyrings/docker.gpg] \
    https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin
sudo systemctl start docker
sudo systemctl enable docker
docker version
docker run --rm hello-world
sudo usermod -aG docker $USER
newgrp docker
ls
cd service2/
ls
cd 
cd service2/
cd service_2/
ls
pwd
cd 
cd service2/
pwd
mv /home/azureuser/service2/service_2 /home/azureuser/service2
ls
clear
cd service_2/
ls
cd service2/
cd service_2/
clear
ls
touch Dockerfile
ls
nano Dockerfile 
ls
nano Dockerfile 
docker build -t service2 .
docker image
docker images
docker run -d --name service2 -p 8002:8002 service2
docker ps
docker logs service2
curl http://localhost:8002/ping
# => {"status":"ok","service":"2"}
curl http://localhost:8002/ping
docker ps
nano Dockerfile 
docker build -t service2 .
docker rm -f service2
docker run -d --name service2 -p 8002:8002 service2
docker ps
docker ps -a
docker logs fb32decc6339
nano Dockerfile 
docker build -t service2 .
docker rm -f service2 2>/dev/null || true
docker run -d --name service2 -p 8002:8002 service2
docker ps
docker logs 8b9273a271cc
nano Dockerfile 
docker build -t service2 .
docker rm -f service2 2>/dev/null || true
docker run -d --name service2 -p 8002:8002 service2
curl http://localhost:8002/ping
docker ps
docker logs service2
nano Dockerfile 
docker build -t service2 .
docker rm -f service2 2>/dev/null || true
docker run -d --name service2 -p 8002:8002 service2
docker ps
curl http://localhost:8002/ping
docker network create service-network
docker rm -f service2 2>/dev/null || true
docker run -d   --name service2   --network service-network   -p 8002:8002   service2
docker ps
dpcker ps
docker ps
docker logs service
docker logs service2
cd ..
cd 
ls
mkdir nginx
ls
nano nginx/
cd nginx/
ls
touch Dockerfile
touch nginx.conf
nano Dockerfile
nano nginx.conf 
docker build -t nginx-svc ./nginx
docker build -t nginx-svc .
docker run -d   --name nginx   --network service-network   -p 8080:8080   nginx-svc
docker ps
curl http://localhost:8080/service2/ping
docker logs nginx
cd ..
ls
mkdir service1
ls
cd service
cd service1
ls
cd ..
ls
cd service
cd service2
ls
cd e
cd service_2/
ls
cd ..
cd .
cd
cd service1
ls
cd service_1/
ls
clear
ls
ls -la
touch Dockerfile
ls
nano Dockerfile 
docker build -t service1 .
docker run -d   --name service1   --network service-network   -p 8001:8001   service1
docker ps
curl http://localhost:8001/ping
curl http://localhost:8001/hello
cd
cd nginx/
ls
nano nginx.conf 
docker build -t nginx-svc .
docker rm -f service1 service2 nginx 2>/dev/null || true
docker run -d --name service1 --network service-network -p 8001:8001 service1
docker run -d --name service2 --network service-network -p 8002:8002 service2
docker run -d   --name nginx   --network service-network   -p 8080:8080   nginx-svc
docker ps
curl http://localhost:8080/service1/ping 
curl http://localhost:8080/service1/hello
curl http://localhost:8080/service2/ping 
curl http://localhost:8080/service2/hello
docker logs nginx | tail -n 10
ls
cd ..
ls
nano docker-compose.yml
docker-compose up --build -d
ls
sudo apt update
sudo apt install docker-compose-plugin -y
docker compose version
docker compose up --build -d
docker rm -f service1
docker compose up --build -d
docker rm -f service2
docker compose up --build -d
docker rm -f nginx
docker compose up --build -d
curl http://localhost:8080/hello
curl http://localhost:8080/ping
curl http://localhost:8080/service1/hello
curl http://localhost:8080/service2/ping
nano README.md
touch README.md
ls
