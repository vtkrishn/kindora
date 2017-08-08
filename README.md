# Setup instructions

## Linux 
#### Installing Redis
----------------
> sudo apt-get update_


> sudo apt-get install build-essential

>sudo apt-get install tcl8.6

> wget http://download.redis.io/releases/redis-stable.tar.gz

> tar xzf redis-stable.tar.gz

> cd redis-stable

> make

> make test

> sudo make install

> cd utils

> sudo ./install_server.sh


#### Selected config:
* Port           : 6379
* Config file    : /etc/redis/6379.conf
* Log file       : /var/log/redis_6379.log
* Data dir       : /var/lib/redis/6379
* Executable     : /usr/local/bin/redis-server
* Cli Executable : /usr/local/bin/redis-cli

if you get this
> Mmmmm... the default config is missing. Did you switch to the utils directory?

then do
> cd ..

> cp redis.conf /etc/redis/redis.conf

> cp redis.conf /usr/local/etc/redis.conf

or start the redis server by
> /usr/local/etc/redi-server /usr/local/etc/redis.conf
This will start the server

to connect to the client
> /usr/local/bin/redis-cli

> 127.0.0.1:6379> set vinod hi

> OK

> 127.0.0.1:6379> get vinod

> "hi"


#### Installing node
-------------------
> sudo apt-get install software-properties-common

> curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -

> sudo apt-get install nodejs

> node -v

> v6.11.2

> npm -v

> 3.10.10

go to /usr/lib/node_modules to see the installed packages

> sudo npm install -g generator-angular

> sudo npm install redis

> sudo npm install express-generator

from the kindora folder run, your redis server should be running, you will see 
> node app.js

> connected

> hi


