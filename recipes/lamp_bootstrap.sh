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
yum -y install tomcat7 tomcat7-webapps tomcat7-admin-webapps
service tomcat7 start
#Download maven
mkdir /usr/local/apache-maven
cd /usr/local/apache-maven
wget http://www.mirrorservice.org/sites/ftp.apache.org/maven/maven-3/3.2.3/binaries/apache-maven-3.2.3-bin.tar.gz
tar zxvf apache-maven-3.2.3-bin.tar.gz
M2_HOME=/usr/local/apache-maven/apache-maven-3.2.3/
export M2=$M2_HOME/bin
export PATH=$M2:$PATH
#Download java sdk
yum install java-1.7.0-openjdk-devel
cd ~
git clone https://bitbucket.org/kizzie/webservices.git
cd webservices/SimpleWebApplication
mvn package
cp target/SimpleWebApplication-0.0.1-SNAPSHOT.war /usr/share/tomcat7/webapps