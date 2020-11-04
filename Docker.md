# Cheatsheets // Docker

### Typical setup

- Download image
- Run a container with exposed ports
- Exit container
- Continue by starting the exited container

Pro tip: Add this to your aliases(.bashrc,.zshrc):  

    alias dps="echo -e 'Currently up and running:\n' && docker ps && echo -e '\n'"
    alias dpsa="echo -e 'Currently up and running:\n' && docker ps && echo -e '\nAvailable containers:\n' && docker ps -a && echo -e'\n'"
    alias dstart="docker start"
    alias dstop="docker stop"
    alias dimages="docker images"
    alias dcontainers="docker ps -a"
    alias dattach="docker attach"
    alias getip="ifconfig | grep inet"
    dexec(){
        docker exec -it $1 /bin/bash
    }
    
## Basics

###### Enable docker [Linux]
    systemctl enable docker.service
    systemctl start docker.service

###### Download image

    docker pull _IMAGENAME_

###### Expose ports between VM and host

    docker run -p _HOSTPORT_:_CONTAINERPORT_ _IMAGE_
  
###### Expose all ports of the container between the VM and the host

    docker run -P _IMAGE_
  
###### list images  
  
    docker images

###### list containers  
  
    docker ps -a

###### run container from image  
  
    docker run _IMAGE_
  
###### stop container  
  
    docker stop _CONTAINER_ID_

###### start exited container  
  
    docker start _CONTAINER_ID_

###### remove container  
  
    docker rm _CONTAINER_ID_

###### Check container logs  
  
    docker log _CONTAINER_ID_
    
## Shortcuts and troubleshooting

##### remove all exited containers  

    docker ps -a | grep Exit | cut -d ' ' -f 1 | xargs docker rm
    
    alternatively,
    docker [image/container/volume/network] prune (-a)

##### kill and remove all containers

    docker stop $(docker ps -aq) && docker rm $(docker ps -aq)

###### Reconnect to Docker  

    docker-machine env default  
    _run the last line as mentioned. e.g:_  
    eval $("C:\Program Files\Docker Toolbox\docker-machine.exe" env default)  
 
##### List ip-address

    docker-machine ls

###### Running commands on a container
  
    docker exec -it CONTAINER_NAME bash -l  
  
## Using Docker Compose

###### Using compose to create all containers

    docker-compose up

###### Using compose to stop all containers

    docker-compose stop
  
###### Using compose restart all exited containers

    docker-compose start
  
###### Checking status of composed containers

    docker-compose ps
  
###### List images as used by compose

    docker-compose images

###### Get the ip-address and checking the port of a composed service

    docker exec -it _CONTAINER_NAME_ bash
    ping _SERVICE_
    curl -s _SERVICE_:_PORT_ >/dev/null && echo Success. || echo Fail.
