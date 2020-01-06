# Docker Image Ubuntu 16.04 with sshd

![Docker Stars](https://img.shields.io/docker/stars/devdotnetorg/ubuntu-1604-ssh.svg?maxAge=2592000)
[![MicroBadger](https://images.microbadger.com/badges/image/devdotnetorg/ubuntu-1604-ssh.svg)](http://microbadger.com/images/devdotnetorg/ubuntu-1604-ssh)
![Docker pulls](https://img.shields.io/docker/pulls/devdotnetorg/ubuntu-1604-ssh.svg)
![](https://img.shields.io/github/last-commit/devdotnetorg/ubuntu-1604-ssh.svg?style=flat)

Docker official Image Ubuntu 16.04 with sshd started. Password authentication.

#### Upstream Links

* Docker Registry @ [devdotnetorg/ubuntu-1604-ssh](https://hub.docker.com/r/devdotnetorg/ubuntu-1604-ssh)
* GitHub @ [devdotnetorg/ubuntu-1604-ssh](https://github.com/devdotnetorg/ubuntu-1604-ssh)

## Features

* SSH. Allow SSH connection to the container.
* Midnight Commander (Visual file manager).
* htop (an interactive process viewer for Unix).

## Quick Start
 
### Environment Variables
 
Set variable of password for root user:

`-e PASSWORD=123456`

Run container with public port for connections is 222, password for user root is 654321, volume ubuntu-data for transfer data in/out of container:

`$ docker run -d --name ubuntu-sshd -p 222:22 -e PASSWORD=654321 -v ubuntu-data:/data devdotnetorg/ubuntu-1604-ssh`

For network is mynetwork:

`$ docker run -d --name ubuntu-sshd --net mynetwork --ip 172.18.0.20 -p 222:22 -e PASSWORD=654321 -v ubuntu-data:/data devdotnetorg/ubuntu-1604-ssh`

## Connect to container

Run Putty set you IP address and port 222

login root, password 654321

## Shell

#### Midnight Commander (Visual file manager)

![Image of Midnight Commander](https://raw.githubusercontent.com/devdotnetorg/docker-ubuntu-1604-ssh/master/screenshots/scr1-ubuntu-1604-ssh.png)

Site: http://midnight-commander.org/

GNU Midnight Commander is a visual file manager, licensed under GNU General Public License and therefore qualifies as Free Software. It's a feature rich full-screen text mode application that allows you to copy, move and delete files and whole directory trees, search for files and run commands in the subshell. Internal viewer and editor are included.

Start: `$ mc`

#### htop (an interactive process viewer for Unix)

![Image of htop](http://hisham.hm/htop/htop-2.0.png)

Site: http://hisham.hm/htop/

This is htop, an interactive process viewer for Unix systems. It is a text-mode application (for console or X terminals) and requires ncurses.

Start: `$ htop`

## Need help?

If you have questions on how to use the image, please send mail to anton@devdotnet.org


# Docker образ Ubuntu 16.04 с возможностью подключения по SSH

Официальный образ Ubuntu 16.04 с установленным sshd. Авторизация по паролю.

## Возможности

* SSH. Подключение без ограничений.
* Midnight Commander (визуальный файловый менеджер).
* htop (интерактивный менеджер запущенных процессов. Аналог Менеджер задач в ОС Windows).

## Запуск
 
### Переменные образа
 
Переменная для установки пароля пользователя root:

`-e PASSWORD=123456`


Запуск контейнера, внешний порт 222, пароль для пользователя root - 654321, том данных ubuntu-data для передачи данных из/в окружение контейнера:

`$ docker run -d --name ubuntu-sshd -p 222:22 -e PASSWORD=654321 -v ubuntu-data:/data devdotnetdotorg/ubuntu-1604-ssh`

Запуск контейнера для сети mynetwork:

`$ docker run -d --name ubuntu-sshd --net mynetwork --ip 172.18.0.20 -p 222:22 -e PASSWORD=654321 -v ubuntu-data:/data devdotnetdotorg/ubuntu-1604-ssh`

## Подключение к контейнеру

Запустите Putty укажите IP-адрес и порт 222

Логин root, пароль 654321

## Справка

По вопросам использования образа, обращаться на почту anton@devdotnet.org
