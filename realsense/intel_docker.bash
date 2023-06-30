xhost local:root
XAUTH=/tmp/.docker.xauth
docker run -it \
    --name=intel_docker_dev\
    --env="DISPLAY=$DISPLAY" \
    --env="QT_X11_NO_MITSHM=1" \
    --volume="myVolume:/ur_ws/src" \
    --env="XAUTHORITY=$XAUTH" \
    --device="/dev/tty1" \
    --net=host \
    --privileged \
    intel \
    bash

echo "Done."