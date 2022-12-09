#!/bin/bash
sudo yum update -y
sudo yum install nginx -y
#sudo chmod +x /usr/share/nginx/html
#sudo cat /home/ec2-user/demo.html > /usr/share/testpage/index.html
sleep 20
sudo service nginx restart
sudo systemctl --type service --all|grep -i nginx
sleep 30