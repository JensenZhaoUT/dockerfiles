xhost local:root
XAUTH=/tmp/.docker.xauth
docker run -it \
    --name=basler2\
    --env="DISPLAY=$DISPLAY" \
    --env="QT_X11_NO_MITSHM=1" \
    --env="XAUTHORITY=$XAUTH" \
    --volume="myVolume:/catkin_ws/src" \
    --mount type=bind,source=/home/jensen/kinetic,target=/home/jensen/kinetic \
    --net=host \
    --privileged \
    ubt20 \
    bash

echo "Done."
