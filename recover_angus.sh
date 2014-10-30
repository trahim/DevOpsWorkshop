#!/bin/sh
filename="animal30_10_11.sql"
mysql -uroot < /var/www/html/angus/animal.sql
wget https://s3-us-west-2.amazonaws.com/webtcrotch/angus/$filename
mysql -uroot animal < $filename
