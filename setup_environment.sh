#!/bin/bash
# Script to setup Jetson TX2 environment. Probably would also work
# with slight modifications on other Jetson hardware

# Setup sources.lst
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
# Setup keys
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Grab new package lists from ros.org
sudo apt update
sudo apt -y upgrade

sudo apt install -y libssl-dev libusb-1.0-0-dev pkg-config libgtk-3-dev libglfw3-dev libgl1-mesa-dev libglu1-mesa-dev


# These are listed 1 package per line to hopefully make git merging easier
# They're also sorted alphabetically to keep packages from being listed multiple times
sudo apt install -y \
	build-essential \
	can-utils \
	ccache \
	cmake \
	cowsay \
	dbus-x11 \
	exfat-fuse \
	exfat-utils \
	gdb \
	gfortran \
	git \
	gstreamer1.0-plugins-* \
	htop \
	libatlas-base-dev \
	libboost-all-dev \
	libcanberra-gtk-module \
	libcanberra-gtk3-module \
	libeigen3-dev \
	libflann-dev \
	libgflags-dev \
	libgoogle-glog-dev \
	libgoogle-perftools-dev \
	libgtk2.0-dev \
	libhdf5-dev \
	libhdf5-serial-dev \
	libleveldb-dev \
	liblmdb-dev \
	liblua5.3-dev \
	libpcl-dev \
	libproj-dev \
	libprotobuf-dev \
	libsnappy-dev \
	libsuitesparse-dev \
	libtinyxml2-dev \
	net-tools \
	nmap \
	ntp \
	ntpdate \
	openssh-client \
	pkg-config \
	protobuf-compiler \
	pyqt5-dev-tools \
	python-dev \
	python-matplotlib \
	python-numpy \
	python-opencv \
	python-pip \
	python-pyqt5 \
	python-pyqtgraph \
	python-scipy \
	qt4-designer \
	rsync \
	software-properties-common \
	terminator \
	unzip \
	v4l-conf \
	v4l-utils \
	wget \
	xfonts-scalable

sudo apt install -y \
	ros-melodic-ros-base \
	liblua5.3-dev \
	libsuitesparse-dev \
	ninja-build \
	python-catkin-tools \
	python-pyqtgraph \
	python-rosdep \
	python-rosinstall \
	python-wstool \
	ros-melodic-ar-track-alvar \
	ros-melodic-controller-manager \
	ros-melodic-control-msgs \
	ros-melodic-cv-bridge \
	ros-melodic-ecl-geometry \
	ros-melodic-grid-map-core \
	ros-melodic-grid-map-cv \
	ros-melodic-grid-map-ros \
	ros-melodic-hardware-interface \
	ros-melodic-joint-limits-interface \
	ros-melodic-joint-state-publisher \
	ros-melodic-joystick-drivers \
	ros-melodic-map-server \
	ros-melodic*mux* \
	ros-melodic-navigation \
	ros-melodic-pcl-conversions \
	ros-melodic-pid \
	ros-melodic-robot-localization \
	ros-melodic-robot-state-publisher \
	ros-melodic-rosbridge-suite \
	ros-melodic-roslint \
	ros-melodic-rosparam-shortcuts \
	ros-melodic-rqt \
	ros-melodic-rqt-common-plugins \
	ros-melodic-rqt-controller-manager \
	ros-melodic-rtabmap-ros \
	ros-melodic-rviz \
	ros-melodic-rviz-imu-plugin \
	ros-melodic-serial \
	ros-melodic-teb-local-planner \
	ros-melodic-tf \
	ros-melodic-tf2-ros \
	ros-melodic-tf2-tools \
	ros-melodic-transmission-interface \
	ros-melodic-usb-cam \
	ros-melodic-xacro \
	terminator 

sudo rosdep init
rosdep update

sudo apt-key adv --keyserver keys.gnupg.net --recv-key F6E65AC044F831AC80A06380C8B3A55A6F3EFCDE || sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-key F6E65AC044F831AC80A06380C8B3A55A6F3EFCDE
sudo add-apt-repository "deb http://realsense-hw-public.s3.amazonaws.com/Debian/apt-repo bionic main" -u
sudo apt update
sudo apt install -y librealsense2-dkms librealsense2-utils librealsense2-dev librealsense2-dbg

#add submodules and wstool packages
git submodule init
git submodule update

wstool update -t src

#sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-9 30 --slave /usr/bin/g++ g++ /usr/bin/g++-9
#sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-7 90 --slave /usr/bin/g++ g++ /usr/bin/g++-7

# Set up Gold linker - speed up libPCL links
#sudo update-alternatives --install "/usr/bin/ld" "ld" "/usr/bin/ld.gold" 20
#sudo update-alternatives --install "/usr/bin/ld" "ld" "/usr/bin/ld.bfd" 10

#echo | sudo update-alternatives --config ld

mkdir -p ~/Swerve_ws/CTRE/include
mkdir -p ~/Swerve_ws/CTRE/lib/ctre

cd ~/Swerve_ws/CTRE
wget -e robots=off -U mozilla -r -np http://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/ -A "*5.18.3*,firmware-sim*zip" -R "md5,sha1,pom,jar,*windows*"
cd ~/Swerve_ws/CTRE/include
find ~/Swerve_ws/CTRE/devsite.ctr-electronics.com -name \*headers\*zip | xargs -n 1 unzip -o 
cd ~/Swerve_ws/CTRE/lib/ctre
find ~/Swerve_ws/CTRE/devsite.ctr-electronics.com -name \*linux\*zip | xargs -n 1 unzip -o 
rm -rf ~/Swerve_ws/CTRE/devsite.ctr-electronics.com
cd ~/Swerve_ws

. /opt/ros/melodic/setup.bash
catkin_make
. ~/Swerve_ws/devel/setup.bash