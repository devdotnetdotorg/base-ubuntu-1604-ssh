# Ubuntu-1604
Docker base image Ubuntu 16.04 with SSH started
Allow SSH connection to the container
Installed mc,htop, language-pack-ru ru_RU.UTF8, zip

Used port 22

Enviroment password for root:
-e PASSWORD=123456

Run Container:
docker run -d --name ubuntu --net mynetwork --ip 172.18.0.20 -p 222:22 devdotnetdotorg/ubuntu-1604-ssh
