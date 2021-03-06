#!/usr/bin/env sh
set -e

CONNECTOR=mysql-connector-java-5.1.40

cd /tmp
curl -OL -k https://dev.mysql.com/get/Downloads/Connector-J/${CONNECTOR}.tar.gz
tar xvzf ${CONNECTOR}.tar.gz ${CONNECTOR}/${CONNECTOR}-bin.jar

mv ${CONNECTOR}/${CONNECTOR}-bin.jar ${ALF_HOME}/tomcat/lib

rm -rf /tmp/${CONNECTOR}*
