#!/bin/bash

cmd="docker run --gpus all \
--restart always \
-it \
--name anaconda_cuda11-cudnn8 \
-p 8888:8888 \
--volume="/dev:/dev:rw" \
--privileged \
--shm-size=2g \
--env="DISPLAY" \
--volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
--volume="${PWD}:/root/WORKSPACE:rw" \
tossy0423/anaconda:cuda11-cudnn8"
 
echo "xhost + "
xhost +
 
echo "${cmd}"
${cmd}
