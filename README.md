docker . -t flaskapp
docker run -d -p 500:5000 flaskapp:latest

----
docker run -d -p 3306:3306 --name mysql -e MYSQL_ROOT_PASSWORD=admin mysql:5.7

============
// Create docker network
--
docker network create <twotier(network_Pname)>
--

docker run -d -p 5000:5000 --network=twotier -e MYSQL_HOST=mysql -e MYSQL_USER=admin -e MYSQL_PASSWORD=admin -e MYSQL_DB=myDB --name=flaskapp flaskapp:latest

docker run -d -p 3306:3306 --network=twotier -e MYSQL_DATABASE=myDB -e MYSQL_USER=admin -e MYSQL_PASSWORD=admin -e MYSQL_ROOT_PASSWORD=admin mysql:5.7

--
docker network ls
docker network inspect twotier

-----
//mage push to dockerhub

=========
docker-compose file create 

dcoker-compose up -d   # automatically docker network create and both mysql and flask container connected
