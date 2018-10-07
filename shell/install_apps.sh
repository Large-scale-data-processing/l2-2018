#!/bin/bash

runuser -l vagrant -c 'yay --noconfirm --answeredit none -S apache-zeppelin'
runuser -l vagrant -c 'yay --noconfirm --answeredit none-S jdk8'
archlinux-java set java-8-jdk
/opt/apache-zeppelin/bin/zeppelin-daemon.sh start

