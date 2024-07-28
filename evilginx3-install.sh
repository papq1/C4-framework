#!/bin/bash
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install make -y
sudo apt-get install golang-go -y
sudo snap install docker
sudo apt-get install unzip -y
git clone https://github.com/kgretzky/evilginx2.git
cd /home/ubuntu/evilginx2 && sudo make
sudo systemctl disable systemd-resolved
sudo systemctl stop systemd-resolved
