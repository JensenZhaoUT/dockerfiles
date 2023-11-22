xhost local:root
XAUTH=/tmp/.docker.xauth
docker run -it \
    --name=meoldic1\
    --env="DISPLAY=$DISPLAY" \
    --env="QT_X11_NO_MITSHM=1" \
    --volume="myVolume_melodic:/catkin_ws/src" \
    --env="XAUTHORITY=$XAUTH" \
    --net=host \
    --privileged \
    melodic \
    bash

echo "Done."
