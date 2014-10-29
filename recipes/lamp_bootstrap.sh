#!/bin/sh
#Apache, PHP and MySQL install script
yum -y install httpd php mysql php-mysql mysql-server git java-devel
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
yum -y install tomcat7 tomcat7-webapps tomcat7-admin-webapps
service tomcat7 start
#Download maven rpm
cd ~
wget https://repos.fedorapeople.org/repos/dchen/apache-maven/epel-6/x86_64/apache-maven-3.2.1-2.el6.noarch.rpm
rpm -ivh apache-maven-3.2.1-2.el6.noarch.rpm
cd ~
git clone https://bitbucket.org/kizzie/webservices.git
cd webservices/SimpleWebApplication
mvn package
cp target/SimpleWebApplication-0.0.1-SNAPSHOT.war /usr/share/tomcat7/webapps
cd ~
git clone https://github.com/kizzie/SpringForms.git
cd SpringForms/
mvn package
cp target/SpringForms-1.0.0-BUILD-SNAPSHOT.war /usr/share/tomcat7/webapps/