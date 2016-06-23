#!/bin/bash
set -e

if [ -z "$REST_PORT" ]
then
	REST_PORT="9399"
fi

mv /var/www/html/veeam.php /veeam/veeam.php
sed -e "s/REPLACE_SERVER/$REST_SERVER/" -e "s/REPLACE_PORT/$REST_PORT/" -e "s/REPLACE_USER/$REST_USER/" -e "s/REPLACE_PASS/$REST_PASS/" /veeam/veeam.php > /var/www/html/veeam.php

mv /var/www/html/veeam.class.php /veeam/veeam.class.php
sed -e "s/REPLACE_BACKUP_SERVER/$BACKUP_SERVER/" -e "s/REPLACE_BACKUP_REPOSITORY/$BACKUP_REPOSITORY/" -e "s/REPLACE_HARDWARE_PLAN/$HARDWARE_PLAN/" /veeam/veeam.class.php > /var/www/html/veeam.class.php

apache2-foreground