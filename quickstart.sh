#!/bin/bash
echo "Let's go :"

# Variable
this_path=`pwd`
version_img="1cc740a"

# Docker pull images
if [[ -z `docker images | grep securityhub/securityhubrepo` ]] && [[ `docker images | grep securityhub/securityhubrepo | awk '{print $2}'` == $version_img ]]
then
	docker pull securityhub/securityhubrepo:$version_img
fi

# Docker create volume
if [[ -z `docker volume ls | grep securityhub_conf` ]]
then
	docker volume create --driver local --opt o=bind --opt type=none --opt device=$this_path/securityhub_conf/shiro.ini securityhub_conf
fi

# Start the container
echo "--> Start SecurityHub container"
docker run -d --name securityhub --mount source=securityhub_conf,target=/opt/zeppelin/conf/shiro.ini -p 8080:8080 securityhub/securityhubrepo:$version_img

echo "Security Hub is live"
