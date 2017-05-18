# Cheatsheets // Docker

### Typical setup

- Download image
- Run a container with exposed ports
- Exit container
- Continue by starting the exited container

###### Enable docker [Arch Linux]
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

##### remove all exited containers  

  docker ps -a | grep Exit | cut -d ' ' -f 1 | xargs docker rm

###### Reconnect to Docker  

  docker-,achine env default  
  _run the last line as mentioned. e.g:_  
 eval $("C:\Program Files\Docker Toolbox\docker-machine.exe" env default)  
