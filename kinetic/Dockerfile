FROM osrf/ros:kinetic-desktop-full

RUN apt-get update && \
    sudo apt-get -y install ros-kinetic-catkin python-catkin-tools && \
    sudo apt-get -y upgrade && \
    sudo apt-get install wget && \
    sudo apt-get install nano && \
    sudo apt-get install -y git && apt-get install -y python3-pip && \
    sudo apt install -y ros-kinetic-moveit && \
    sudo apt-get install -y ros-kinetic-gazebo-ros-control && \
    sudo apt-get install -y ros-kinetic-ros-control && \
    sudo apt-get install -y x11-apps

RUN sudo apt-get install ros-kinetic-joint-state-controller && \
    sudo apt-get install -y ros-kinetic-effort-controllers && \
    sudo apt-get install ros-kinetic-position-controllers && \
    sudo apt-get install -y ros*controller* && \
    sudo apt install ros-kinetic-joint-state-publisher-gui && \
    mkdir -p /catkin_ws/src

RUN mkdir -p ~/.gazebo && \
    cd ~/.gazebo && \
    git clone https://github.com/osrf/gazebo_models.git && \
    mv gazebo_models models

RUN cd catkin_ws/src && \
    git clone -b kinetic-devel https://github.com/ros-industrial/universal_robot.git && \
    cd universal_robot/ur_description/urdf && \
    rm common.gazebo.xacro && \
    git clone https://github.com/JensenZhaoUT/modified_files.git 

RUN /bin/bash -c '. /opt/ros/kinetic/setup.bash; cd /catkin_ws; catkin_make;. ./devel/setup.bash;'
    
    
RUN echo ". /opt/ros/kinetic/setup.bash" >> ~/.bashrc
RUN echo ". /catkin_ws/devel/setup.bash" >> ~/.bashrc
RUN echo "ALL Done"
#sudo docker run -t -d -v myVolume:/ur_ws/src <image_name>
#sudo docker exec -it <container_id> bash
#docker image rm
#docker build -t <image_name> .
#sudo docker volume create <volume_name>
