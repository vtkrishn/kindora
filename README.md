#Setup instructions

##Linux 
####Installing Redis
----------------
_sudo apt-get update_

_sudo apt-get install build-essential_

_sudo apt-get install tcl8.6_

_wget http://download.redis.io/releases/redis-stable.tar.gz_

_tar xzf redis-stable.tar.gz_

_cd redis-stable_

_make_

_make test_

_sudo make install_

