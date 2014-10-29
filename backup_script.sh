#!/bin/sh
#backup script 
sudo yum update 
sudo aws s3 cp /var/www/html/wordpress/wordpress_db.sql s3://webtcrotch/wordpress_db.sql
sudo aws s3 cp /var/www/html/angus/animal.sql s3://webtcrotch/wordpress_db.sql
