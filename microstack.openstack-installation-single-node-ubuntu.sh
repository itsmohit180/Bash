#!/bin/bash

sudo apt update
sudo apt install python3-dev python3-pip git -y
sudo snap install microstack --beta
sudo microstack init --auto --control --setup-loop-based-cinder-lvm-backend --loop-device-file-size 80
sudo snap get microstack config.credentials.keystone-password
