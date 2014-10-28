#!/bin/sh
#Apache, PHP and MySQL install script
yum -y install httpd php mysql php-mysql mysql-server
chkconfig httpd on
/etc/init.d/httpd start
chkconfig mysqld on
service mysqld start