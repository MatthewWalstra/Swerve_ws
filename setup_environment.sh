#!/bin/bash
# Script to setup Jetson TX2 environment. Probably would also work
# with slight modifications on other Jetson hardware

sudo apt update
sudo apt -y upgrade

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
cd ~


echo “source /opt/ros/melodic/setup.bash” >> ~/.bashrc
source ~/.bashrc
cd ~/Swerve_ws

catkin_make

echo “source ~/Swerve_ws/devel/setup.bash” >> ~/.bashrc
source ~/.bashrc