#!/bin/bash
# sudo yum install httpd -y
# sudo systemctl start httpd
# sudo systemctl enable httpd


sudo apt update
sudo apt install apache2 -y
sudo systemctl start apache2
sudo systemctl enable apache2
