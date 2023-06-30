FROM osrf/ros:kinetic-desktop-full

RUN sudo apt-get update && \
    sudo apt-get -y upgrade && \
    sudo apt-get -y install ros-kinetic-catkin python-catkin-tools && \
    sudo apt-get install wget && \
    sudo apt-get install nano && \
    apt-get install -y git && apt-get install -y python3-pip && \
    sudo apt install -y ros-kinetic-moveit && \
    sudo apt-get install -y ros-kinetic-gazebo-ros-control && \
    --device=/dev/tty1 \
    # sudo apt-get -y install ros*controller* && \
    mkdir -p /ur_ws/src 

# RUN mkdir -p /etc/apt/keyrings 
# RUN curl -sSf https://librealsense.intel.com/Debian/librealsense.pgp 
# RUN sudo tee /etc/apt/keyrings/librealsense.pgp > /dev/null 
# RUN echo "deb [signed-by=/etc/apt/keyrings/librealsense.pgp] https://librealsense.intel.com/Debian/apt-repo `lsb_release -cs` main" | \
#     sudo tee /etc/apt/sources.list.d/librealsense.list 
# RUN sudo apt-get -y install apt-transport-https 
# RUN sudo apt-get update && \
#     sudo apt-get -allow-unauthenticated -y install librealsense2-dkms && \
#     sudo apt-get -allow-unauthenticated -y install librealsense2-utils && \

RUN sudo mkdir -p /etc/apt/keyrings &&\
    curl -sSf https://librealsense.intel.com/Debian/librealsense.pgp | sudo tee /etc/apt/keyrings/librealsense.pgp > /dev/null
RUN echo "deb [signed-by=/etc/apt/keyrings/librealsense.pgp] https://librealsense.intel.com/Debian/apt-repo `lsb_release -cs` main" | \
    sudo tee /etc/apt/sources.list.d/librealsense.list
RUN sudo apt-get install -y apt-transport-https
RUN sudo apt-get update
RUN sudo apt-get install -y librealsense2-dkms
RUN sudo apt-get install -y librealsense2-utils
# RUN cd /ur_ws/src/ && \ 
#     git clone -b kinetic-devel https://github.com/ros-industrial/universal_robot.git && \
#     cd /ur_ws

RUN echo "ALL Done"