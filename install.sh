#!/bin/sh

rm -f /etc/motd
ln -s /gitlab/hilderonny/homeserver/loginbanner /etc/motd
echo "Banner /gitlab/hilderonny/homeserver/loginbanner" >> /etc/ssh/sshd_config
rm -f /etc/issue
ln -s /gitlab/hilderonny/homeserver/loginbanner /etc/issue
