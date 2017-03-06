# Cheatsheets // Docker

###### list images  
  
  docker images

###### list containers  
  
  docker ps -a

###### run container from image  
  
  docker run [IMAGE]
  
###### stop container  
  
  docker stop [CONTAINER_ID]

###### start exited container  
  
  docker start [CONTAINER_ID]

###### remove container  
  
  docker rm [CONTAINER_ID]

##### remove all exited containers  

  docker ps -a | grep Exit | cut -d ' ' -f 1 | xargs docker rm
