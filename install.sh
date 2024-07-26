#!/bin/bash
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install make -y
sudo apt-get install golang-go -y
sudo snap install docker
sudo git clone https://github.com/its-a-feature/Mythic.git
cd /home/ubuntu/Mythic/  && sudo ./install_docker_ubuntu.sh
cd /home/ubuntu/Mythic/Mythic_CLI/ && sudo  make
sudo cp /home/ubuntu/Mythic/Mythic_CLI/mythic-cli /home/ubuntu/Mythic
cd /home/ubuntu/Mythic/ && sudo -E ./mythic-cli install github https://github.com/MythicAgents/Apollo.git
cd /home/ubuntu/Mythic/ && sudo -E ./mythic-cli install github https://github.com/MythicC2Profiles/http
cd /home/ubuntu/Mythic/ && sudo -E ./mythic-cli restart
