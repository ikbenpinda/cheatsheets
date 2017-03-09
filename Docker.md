# Cheatsheets // Docker

###### Enable docker [Arch Linux]
  systemctl enable docker.service
  systemctl start docker.service
  
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
