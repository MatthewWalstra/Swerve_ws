catkin profile set aarch64
catkin build -j8 --cmake-args -DCMAKE_TOOLCHAIN_FILE=$(pwd)/aarch64toolchain.cmake -DCMAKE_CROSS_COMPILE_PREFIX=$(pwd)/aarch64_root