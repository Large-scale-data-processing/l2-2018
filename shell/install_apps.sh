#!/bin/bash

runuser -l vagrant -c 'yay --noconfirm --answeredit none -S jdk8 --noconfirm'
archlinux-java set java-8-jdk

runuser -l vagrant -c 'yay --noconfirm --answeredit none -S apache-zeppelin'

rm -rf /opt/apache-zeppelin/run
rm -rf /opt/apache-zeppelin/logs
echo "[Install]" >> /usr/lib/systemd/system/apache-zeppelin.service
echo "WantedBy=multi-user.target" >> /usr/lib/systemd/system/apache-zeppelin.service
systemctl enable apache-zeppelin
systemctl start apache-zeppelin

