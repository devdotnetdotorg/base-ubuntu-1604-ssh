# Ubuntu-1604
Docker base image Ubuntu 16.04 with SSH started
Features:
1) SSH. Allow SSH connection to the container.
2) Midnight Commander (Visual file manager). Site: http://midnight-commander.org/. Start: $mc
3) htop (an interactive process viewer for Unix). Site: http://hisham.hm/htop/. Start: $htop

For SSH used port 22

Enviroment password for root:

`-e PASSWORD=123456`

WARNING! Password is 123456 as sample. You must set a different password, not 123456

Run Container: `docker run -d --name ubuntu -p 222:22 -e PASSWORD=123456 devdotnetdotorg/ubuntu-1604-ssh`

For network is mynetwork: `docker run -d --name ubuntu --net mynetwork --ip 172.18.0.20 -p 222:22 -e PASSWORD=123456 devdotnetdotorg/ubuntu-1604-ssh`

Connect to container:

Run Putty set you IP address and port 222

login root

password 123456
