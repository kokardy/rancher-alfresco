#!/bin/sh


python /app/init.py

##################################
#LIBRE OFFICE SETTING
cd /opt/alfresco/libreoffice/scripts
ln -s libreoffice_ctl.sh ctl.sh
sed -i -e "s/\\\\;/;/g" libreoffice_ctl.sh
####################################

exec /usr/bin/supervisord -n -c /etc/supervisor/supervisord.conf
