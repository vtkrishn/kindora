DB to be used redis
https://redis.io/

Runtime
Nodejs
https://nodejs.org/en/

UI Angular
https://angularjs.org/

Versioning
https://github.com/vtkrishn/kindora.git

IDE
https://codeanywhere.com

server running under
http://port-1024.testing-vinsinin567516.codeanyapp.com/

login page
http://port-1024.testing-vinsinin567516.codeanyapp.com/kindora/#!/login

# Setup instructions

refer scripts/install.sh

or start the redis server by
> /usr/local/etc/redi-server
This will start the server

to connect to the client
> /usr/local/bin/redis-cli
> 127.0.0.1:6379> set simple hi
> OK
> 127.0.0.1:6379> get simple
> "hi"

#### Installing node
-------------------
refer scripts/install.sh

from the kindora folder run, your redis server should be running, you will see 
> node app.js
> connected
> hi


