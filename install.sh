#!/bin/sh

ln -s ./loginbanner /etc/motd
echo "Banner /gitlab/hilderonny/homeserver/loginbanner" >> /etc/ssh/sshd_config
rm /etc/issue
ln -s ./loginbanner /etc/issue
