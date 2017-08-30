#!/bin/sh

echo " -------------------- Installing redis --------------------"
sudo apt-get update
sudo apt-get install build-essential
sudo apt-get install tcl8.6
wget http://download.redis.io/releases/redis-stable.tar.gz
tar xzf redis-stable.tar.gz
cd redis-stable
make
make test
sudo make install
cd utils
sudo ./install_server.sh
#configurations
# cabox@box-codeanywhere:~/workspace/redis-stable/utils$ sudo ./install_server.sh
# Welcome to the redis service installer
# This script will help you easily set up a running redis server

# Please select the redis port for this instance: [6379]
# Selecting default: 6379
# Please select the redis config file name [/etc/redis/6379.conf]
# Selected default - /etc/redis/6379.conf
# Please select the redis log file name [/var/log/redis_6379.log]
# Selected default - /var/log/redis_6379.log
# Please select the data directory for this instance [/var/lib/redis/6379]
# Selected default - /var/lib/redis/6379
# Please select the redis executable path [/usr/local/bin/redis-server]
# Selected config:
# Port           : 6379
# Config file    : /etc/redis/6379.conf
# Log file       : /var/log/redis_6379.log
# Data dir       : /var/lib/redis/6379
# Executable     : /usr/local/bin/redis-server
# Cli Executable : /usr/local/bin/redis-cli
# Is this ok? Then press ENTER to go on or Ctrl-C to abort.
# Copied /tmp/6379.conf => /etc/init.d/redis_6379
# Installing service...
#  Adding system startup for /etc/init.d/redis_6379 ...
#    /etc/rc0.d/K20redis_6379 -> ../init.d/redis_6379
#    /etc/rc1.d/K20redis_6379 -> ../init.d/redis_6379
#    /etc/rc6.d/K20redis_6379 -> ../init.d/redis_6379
#    /etc/rc2.d/S20redis_6379 -> ../init.d/redis_6379
#    /etc/rc3.d/S20redis_6379 -> ../init.d/redis_6379
#    /etc/rc4.d/S20redis_6379 -> ../init.d/redis_6379
#    /etc/rc5.d/S20redis_6379 -> ../init.d/redis_6379
# Success!
# Starting Redis server...
# Installation successful!
# cabox@box-codeanywhere:~/workspace/redis-stable/utils$ /usr/local/etc/redi-server
# -bash: /usr/local/etc/redi-server: No such file or directory
# cabox@box-codeanywhere:~/workspace/redis-stable/utils$ /usr/local/etc/redis-server
# -bash: /usr/local/etc/redis-server: No such file or directory
# cabox@box-codeanywhere:~/workspace/redis-stable/utils$ /usr/local/bin/redis-server
# 10292:C 29 Aug 03:09:12.670 # oO0OoO0OoO0Oo Redis is starting oO0OoO0OoO0Oo
# 10292:C 29 Aug 03:09:12.670 # Redis version=4.0.1, bits=64, commit=00000000, modified=0, pid=10292, just started
# 10292:C 29 Aug 03:09:12.670 # Warning: no config file specified, using the default config. In order to specify a config file use /usr/local/bin/redis-server /path/to/redis.conf
# 10292:M 29 Aug 03:09:12.671 # You requested maxclients of 10000 requiring at least 10032 max file descriptors.
# 10292:M 29 Aug 03:09:12.671 # Server can't set maximum open files to 10032 because of OS error: Operation not permitted.
# 10292:M 29 Aug 03:09:12.671 # Current maximum open files is 2048. maxclients has been reduced to 2016 to compensate for low ulimit. If you need higher maxclients increase 'ulimit -n'.
# 10292:M 29 Aug 03:09:12.672 # Creating Server TCP listening socket *:6379: bind: Address already in use
# cabox@box-codeanywhere:~/workspace/redis-stable/utils$ cd ..


echo " -------------------- Installing Node --------------------"
sudo apt-get install software-properties-common
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install nodejs
node -v
npm -v

cd  /usr/lib/node_modules
sudo npm install -g generator-angular
sudo npm install redis
sudo npm install express-generator

echo " -------------------- Installing mysql --------------------"
hostname -f
sudo apt-get update
sudo apt-get upgrade
sudo apt-get update && sudo apt-get upgrade -y

sudo apt-get -y install zsh htop

sudo apt-get install mysql-server-5.6
password - root/[kindora@123]
echo " -------------------- Installing mongodb --------------------"
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get autoremove
sudo apt-get -y install mongodb
