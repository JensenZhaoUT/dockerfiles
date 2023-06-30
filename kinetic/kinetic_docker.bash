xhost local:root
XAUTH=/tmp/.docker.xauth
docker run -it \
    --name=test_2\
    --env="DISPLAY=$DISPLAY" \
    --env="QT_X11_NO_MITSHM=1" \
    --volume="myVolume:/ur_ws/src" \
    --env="XAUTHORITY=$XAUTH" \
    --net=host \
    --privileged \
    kinetic \
    bash

echo "Done."
