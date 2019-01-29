## Ubuntu-1604
Docker base image Ubuntu 16.04 with SSH started

Features:
1) SSH. Allow SSH connection to the container.
2) Midnight Commander (Visual file manager). Site: http://midnight-commander.org/. Start: $mc
3) htop (an interactive process viewer for Unix). Site: http://hisham.hm/htop/. Start: $htop

For SSH used port 22

Enviroment password for root:

`-e PASSWORD=123456`

WARNING! Password is 123456 as sample. You must set a different password, not 123456

Run Container:

`docker run -d --name ubuntu -p 222:22 -e PASSWORD=123456 -v ubuntu-data:/data devdotnetdotorg/ubuntu-1604-ssh`

For network is mynetwork:

`docker run -d --name ubuntu --net mynetwork --ip 172.18.0.20 -p 222:22 -e PASSWORD=123456 -v ubuntu-data:/data devdotnetdotorg/ubuntu-1604-ssh`

Connect to container:

Run Putty set you IP address and port 222

login root

password 123456

Docker Hub: https://hub.docker.com/r/devdotnetdotorg/ubuntu-1604-ssh

# Образ Ubuntu 16.04 с возможностью подключения по SSH

Возможности:
1) SSH. Подключение без ограничений.
2) Midnight Commander (визуальный файловый менеджер). Сайт: http://midnight-commander.org/. Запуск: $mc
3) htop (интерактивный менеджер запущенных процессов. Аналог Менеджер задач в ОС Windows). Сайт: http://hisham.hm/htop/. Запуск: $htop

Для SSH используется порт 22

Переменная для установки пароля пользователя root:

`-e PASSWORD=123456`

ВНИМАНИЕ! Пароль 123456 указан для примера. Вам необходимо вместо 123456, указать любой свой другой пароль

Запуск контейнера:

`docker run -d --name ubuntu -p 222:22 -e PASSWORD=123456 -v ubuntu-data:/data devdotnetdotorg/ubuntu-1604-ssh`

Запуск контейнера для сети mynetwork:

`docker run -d --name ubuntu --net mynetwork --ip 172.18.0.20 -p 222:22 -e PASSWORD=123456 -v ubuntu-data:/data devdotnetdotorg/ubuntu-1604-ssh`

Подключение к контейнеру:

Запустите Putty укажите IP-адрес и порт 222

Логин root

Пароль 123456

Docker Hub: https://hub.docker.com/r/devdotnetdotorg/ubuntu-1604-ssh
