#!/bin/bash
echo "Let's go :"

# Variable
container_name='securityhub'
this_path=`pwd`
name_img="securityhub/securityhubrepo"
version_img="salmon"

# Docker pull images
if [[ -z `docker images | grep $name_img` ]] && [[ `docker images | grep $name_img | awk '{print $2}'` == $version_img ]]
then
	docker pull $name_img:$version_img
fi

# Start the container
echo "--> Start SecurityHub container"
docker run -d --name $container_name --mount source=securityhub_conf,target=/opt/zeppelin/conf -p 8080:8080 $name_img:$version_img

# Change uid and gi of snatch user container
echo "--> Set user"
uid_start_user=`id -u`
gid_start_user=`id -g`
docker exec -u root `docker ps --filter name=$container_name -q` usermod -u $uid_start_user -g $gid_start_user snatch

echo "Security Hub is live on port 8080!"
