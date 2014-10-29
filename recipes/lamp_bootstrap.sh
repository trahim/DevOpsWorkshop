#!/bin/sh
#Apache, PHP and MySQL install script
yum -y install httpd php mysql php-mysql mysql-server git

#turning on services
chkconfig httpd on
/etc/init.d/httpd start
chkconfig mysqld on
service mysqld start

#allow write perms to web root
sudo chown -R ec2-user /var/www/html
sudo chmod -R 777 /var/www/html
cd /var/www/html

#download php app from git repo
git clone https://github.com/kizzie/AngusAnimalSanctuary.git

#creating animals database
mkdir angus/
cd AngusAnimalSanctuary/animal
cp -R * /var/www/html/angus
cd /var/www/html/angus
mysql < animal.sql

#cloning git repo
cd ~
git clone https://github.com/Bgroves93/DevOpsWorkshop.git

#move wordpress to public html
cp -R DevOpsWorkshop/wordpress /var/www/html
cd DevOpsWorkshop/wordpress
mysql < wordpress_db.sql

#Tom cat installation
yum -y install tomcat6 tomcat6-webapps tomcat6-admin-webapps
service tomcat6 start

