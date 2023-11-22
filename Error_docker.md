## Technical Issues
### 1 Blind Mount
`cp -r /home/user/package_name /catkin_ws/src`

note: -r for directory; need / at the front

### 2 Build package from source
<ur_msgs>, <industrial_robot_interface> are components in Universal_robots_ROS_driver, if they are missing. Re-install the Universal_robots_ROS_driver packages

*Make sure to install the packages from source*

### 3 Aborted qt/ No display
make sure the user is added to the group by:
`sudo groupadd docker`
`usermod -aG docker $USER`

### 4 Rosdep cannot find all required resources
try
`rosdep update`

### 5 no sudo is needed for docker
In Docker you almost never need sudo, for three reasons: it's trivial to switch users in most contexts; you don't typically get interactive shells in containers (how do I get a directory listing from inside the cron daemon?); and if you can run any docker command at all you can very easily root the whole host. sudo is also hard to script, and it's very hard to usefully maintain a user password in Docker (writing a root-equivalent password in a plain-text file that can be easily retrieved isn't a security best practice).

