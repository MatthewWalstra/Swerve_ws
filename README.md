1. Clone Workspace into user (~/) directory
2. Source ROS: source /opt/ros/melodic/setup.bash
3. Source Workspace after building: source /devel/setup.bash
4. Update Gitmodules: sudo gitmodule init sudo gitmodule update
5. Update Wstool from Swerve_ws: wstool update -t src
6. Run setup_environment.sh: ./setup_environment.sh