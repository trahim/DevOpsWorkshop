## Specify data base schemas to backup and credentials
DATABASES=“animals“

## Syntax databasename as per above _USER and _PW
wp_USER=web
wp_PW=password
myotherdb_USER=username
myotherdb_PW=password

## Specify directories to backup (it's clever to use relaive paths)
DIRECTORIES="/var/www root etc/cron.daily etc/cron.monthly etc/apache2 etc/mysql etc/php5" 

## Initialize some variables
DATE=$(date +%d)
BACKUP_DIRECTORY=/tmp/backups
S3_CMD="s3cmd"

## Specify where the backups should be placed
S3_BUCKET_URL=s3://mybackupbucket/$DATE/

## The script
cd /
mkdir -p $BACKUP_DIRECTORY
rm -rf $BACKUP_DIRECTORY/*

## Backup MySQL:s
for DB in $DATABASES
do
BACKUP_FILE=$BACKUP_DIRECTORY/${DB}.sql
USER=$(eval echo \$${DB}_USER)
PASSWORD=$(eval echo \$${DB}_PW)
/usr/bin/mysqldump -v -u $USER --password=$PASSWORD -h localhost -r $BACKUP_FILE $DB 2>&1
gzip $BACKUP_FILE 2>&1
$S3_CMD put ${BACKUP_FILE}.gz $S3_BUCKET_URL 2>&1
done

## Backup of config directories
for DIR in $DIRECTORIES
do
BACKUP_FILE=$BACKUP_DIRECTORY/$(echo $DIR | sed 's/\//-/g').tgz
tar zcvf ${BACKUP_FILE} $DIR 2>&1
$S3_CMD put ${BACKUP_FILE} $S3_BUCKET_URL 2>&1
done
