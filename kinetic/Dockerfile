FROM osrf/ros:kinetic-desktop-full

RUN apt-get update && \
    sudo apt-get -y install ros-kinetic-catkin python-catkin-tools && \
    apt-get -y upgrade && \
    sudo apt-get install wget && \
    sudo apt-get install nano && \
    apt-get install -y git && apt-get install -y python3-pip && \
    sudo apt install -y ros-kinetic-moveit && \
    sudo apt-get install ros-kinetic-gazebo-ros-control && \
    mkdir -p /ur_ws/src && \

# RUN cd /ur_ws/src/ && \ 
#     git clone -b kinetic-devel https://github.com/ros-industrial/universal_robot.git && \
#     cd /ur_ws

RUN echo "ALL Done"
#sudo docker run -t -d -v myVolume:/ur_ws/src <image_name>
#sudo docker exec -it <container_id> bash
#docker image rm
#docker build -t <image_name> .
#sudo docker volume create <volume_name>
