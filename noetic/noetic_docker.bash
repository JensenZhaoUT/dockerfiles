xhost local:root
XAUTH=/tmp/.docker.xauth
docker run -it \
    --name=noetic-conda2\
    --env="DISPLAY=$DISPLAY" \
    --env="QT_X11_NO_MITSHM=1" \
    --env="XAUTHORITY=$XAUTH" \
    --volume="myVolume_noetic:/catkin_ws/src" \
    --volume="/dev/bus/usb:/dev/bus/usb" \
    --mount type=bind,source=/home/jensen/noetic,target=/home/jensen/noetic \
    --net=host \
    --privileged \
    ros-noetic2 \
    bash

echo "Done."
