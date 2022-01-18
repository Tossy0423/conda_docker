#!/bin/bash

cmd="docker run \
--restart always \
-it \
--name anaconda_x86 \
-p 8888:8888 \
--volume="/dev:/dev:rw" \
--privileged \
--shm-size=2g \
--env="DISPLAY" \
--volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
--volume="${PWD}:/root/WORKSPACE:rw" \
tossy0423/anaconda:x86"
 
echo "xhost + "
xhost +
 
echo "${cmd}"
${cmd}
