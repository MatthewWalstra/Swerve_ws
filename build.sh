cross_compile_aarch64()
{
    source ~/Swerve_ws/aarch64_root/opt/ros/melodic/setup.bash
    catkin profile set aarch64
    catkin build -j8 --cmake-args -DCMAKE_TOOLCHAIN_FILE=$HOME/Swerve_ws/aarch64toolchain.cmake -DCMAKE_CROSS_COMPILE_PREFIX=$HOME/Swerve_ws/aarch64_root    
}

default_build()
{
    source /opt/ros/melodic/setup.bash

    catkin profile set default
    catkin build -j8
}

if [ $# -eq 0 ]
then
    default_build
fi

for i in $@; do
    if [ $i = "-h" ] || [ $i = "--help" ]; then
        echo -e "\nUsage: ./build.sh \[OPTION...\] \[OPTION...\] ..."
        echo -e "build takes any number of arguments to launch different programs"
        echo -e "\nExamples:"
        echo -e "\t ./build.sh cross \t\t # cross compiles for aarch_64"
        echo -e "Possible options: \n"
        echo -e "\t cross \t\t-> cross compiles for aarch_64"
        
    elif [ $i = "cross" ]; then
        cross_compile_aarch64
    else
        default_build
    fi
done   