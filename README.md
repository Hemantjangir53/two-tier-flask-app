command

```bash    
sudo apt install docker.io
```

```bash    
sudo chown $USER /var/run/docker.sock
```

```bash    
docker . -t flaskapp
```

```bash    
docker run -d -p 500:5000 flaskapp:latest
```

```bash    
docker run -d -p 3306:3306 --name mysql -e MYSQL_ROOT_PASSWORD=admin mysql:5.7
```

Create docker network
```bash    
docker network create <twotier(network_name)>
```

connect both containers
```bash    
docker run -d -p 5000:5000 --network=twotier -e MYSQL_HOST=mysql -e MYSQL_USER=admin -e MYSQL_PASSWORD=admin -e MYSQL_DB=myDB --name=flaskapp flaskapp:latest

docker run -d -p 3306:3306 --network=twotier -e MYSQL_DATABASE=myDB -e MYSQL_USER=admin -e MYSQL_PASSWORD=admin -e MYSQL_ROOT_PASSWORD=admin --name=mysql mysql:5.7

```

```bash    

docker network ls
docker network inspect twotier
```

//mage push to dockerhub


```bash    

docker-compose file create 

dcoker-compose up -d   # automatically docker network create and both mysql and flask container connected

```



------------------------

![Screenshot from 2023-12-20 18-48-10](https://github.com/Hemantjangir53/two-tier-flask-app/assets/146804084/ac1d91e6-3079-43a8-8105-ad4941415a0b)

------------------------------------------

connect to RDS and ec2 instance 
--------------
sudo apt update -y

sudo apt install mysql-client -y

mysql -h <endpoint address> -P <port.no> -u <username> -p

eg .--> mysql -h database-1.camicqvkpid1.us-east-1.rds.amazonaws.com -P 3306 -u admin -p

---
SHOW DATABASES;












