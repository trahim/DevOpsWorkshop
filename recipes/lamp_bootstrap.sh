#!/bin/sh
#Apache, PHP and MySQL install script
yum -y install httpd php mysql php-mysql mysql-server git
chkconfig httpd on
/etc/init.d/httpd start
chkconfig mysqld on
service mysqld start
sudo chown -R ec2-user /var/www/html
sudo chmod -R 777 /var/www/html
