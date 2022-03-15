#!/bin/bash
#Author:kokou
#Desciption: script for installation of docker
#date:March 5,2022



echo "The installation will bigin soon please be patient"
echo 
echo "let's remove any existing old doker version"
echo
sleep 2
sudo yum remove docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate docker-logrotate docker-engine
echo
if
  [ $? -eq 0 ]
  then
  echo "the system is clean, setup docker repository"
  sleep 2
  echo
  sudo yum install -y yum-utils
fi
  if
  [ $? -eq 0 ]
  then
  sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
  fi
    if
     [ $? -eq 0 ]
     then
 echo "Install the docker engine" 
sleep 2
sudo yum install docker-ce docker-ce-cli contained.io
  fi
echo
if
  [ $? -eq 0 ]
  then
  echo "start the docker"
  echo
  sudo systemctl start docker 
 fi
   if
   [ $? -eq 0 ]
  then
  echo " enable the service for it to start at boot"
  echo
  sleep 2
  sudo systemctl enable docker
   fi
      if
       [ $? -eq 0 ]
       then
  echo "Check the status of the daemon to make sure it is up and running"
sleep 2
  echo
  sleep 1
  sudo systemctl status docker
       fi
  if
  [ $? -eq 0 ]
  then
  echo "Verify that the version is installed "
sleep 2  
sudo docker run hello-world
  fi
    if
     [ $? -eq 0 ]
  then
  echo "docker is install successfully"
     fi













