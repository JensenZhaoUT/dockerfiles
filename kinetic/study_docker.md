### Search the file name
$ `find / -type f -name ""`

### Universal robot branch
melodic-devel can also work for noetic system

### Source in dockerfile
```
/bin/bash -c` "<bash_file_name>"
```
e.g. `/bin/bash -c '. /opt/ros/noetic/setup.bash; cd /catkin_ws; catkin_make;. ./devel/setup.bash; rosdep install -y robotiq_modbus_tcp' && \`
inside the quota, we can use `.` to replace `source` which can resolve the `source not find` issue

### Copy and move directory
```
cp -R <source_folder> <destination_folder>
```

### Copy and move file
```
cp /PATH1/file [file2 file3 ...] /PATH2/[newfilename or nothing to use the same name]
```

### Before catkin_make
```
rosdep update
rosdep install --from-paths src --ignore-src -y
```

### conda activate
```
source ~/miniconda3/etc/profile.d/conda.sh
conda activate my_env
```
your_conda can be miniconda or anaconda

### Conda install in dockerfile
make sure to run sudo apt-get update after the conda's installation