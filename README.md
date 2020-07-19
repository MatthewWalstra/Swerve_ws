1. Clone Workspace into user (~/) directory
2. cd ~/Swerve_ws
3. Run setup_environment.sh: ./setup_environment.sh

1. Setup Ethernet Port: Static IP, Wifi, and SSH
-Server: nm-connection-editor, under IPV4 select shared to other computers, specify: static IP, Netmask, and Gateway (wifi gateway)
-client: create ethernet profile, under IPV4 set connection to manual, specify: static IP, Netmask (same as Server), and Gateway (Server Static IP), DNS servers: 8.8.8.8,8.8.4.4, maybe Server Static IP