# 🐳 Docker Compose Service Stack

This project demonstrates a simple microservices setup using **Docker Compose**, featuring two backend services with an **Nginx** reverse proxy.

---

## 📦 Stack Components

- **Service 1**: Go-based HTTP API (listens on port '8001')  
- **Service 2**: Python Flask API (listens on port '8002')  
- **Nginx**: Acts as a reverse proxy (exposes port '8080')  

---

## 🚀 Setup Instructions

### 🔄 Copy Source Code to Docker VM
Use `scp` to transfer services from your local machine to the Docker VM:

```bash
# Copy Service 1 (Go)
scp -i "Docker-VM_keyy.pem" -r "C:\Path\to\service_1" azureuser@<VM_IP>:/home/azureuser/service1
```
# Copy Service 2 (Flask)
scp -i "Docker-VM_keyy.pem" -r "C:\Path\to\service_2" azureuser@<VM_IP>:/home/azureuser/service2
```
Replace <VM_IP> with your Docker VM’s public IP.
```
▶️ Run Services via Docker Compose
SSH into your Docker VM, then from the directory containing docker-compose.yml:
docker compose up --build -d
Confirm services are running:
docker ps

🌐 How Routing Works
Nginx forwards requests based on path prefix:

Endpoint	Routed To	Port
http://<VM_IP>:8080/service1/ping	service1	8001
http://<VM_IP>:8080/service2/hello	service2	8002
Example requests:
curl http://localhost:8080/service1/ping
curl http://localhost:8080/service2/hello

🎁 Bonus Features
✅ Health Checks for both services using /ping

✅ Memory Limits added via mem_limit in docker-compose.yml

🧹 Tear Down
To stop and remove containers:
docker compose down

📁 Project Structure
.
├── docker-compose.yml
├── nginx/
│   └── nginx.conf
├── service1/
│   └── service_1/
│       ├── main.go
│       └── Dockerfile
└── service2/
    └── service_2/
        ├── app.py
        └── Dockerfile
