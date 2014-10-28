#!/bin/sh
#Apache install script
sudo yum update -y
sudo yum groupinstall -y "Web Server" "MySQL Database" "PHP Support"
sudo yum install -y php-mysql
sudo service httpd start
sudo chkconfig httpd on
