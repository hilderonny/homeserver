# VR Server

Das ist ein Express-Webserver, der mit ThreeJS oder Babylon (weiß ich noch nicht), eine Art Holodeck enthält.

Darin kann ich an Holodeck-Szenen mit der Quest arbeiten und nebenbei Filme gucken.

Das Gazne läuft als Dienst und wird mit nodemon jedesmal neu gestartet, wenn an den Node-Skripten etwas geändert wird.

## Installation

* Voraussetzung ist das Aufsetzen des lokalen Repositorys wie [hier](../README.md) beschrieben

```sh
# NodeJS installieren, siehe https://github.com/nodesource/distributions/blob/master/README.md#debinstall
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
apt-get install -y nodejs
# nodemon global installieren
npm install -g nodemon
# Abhängigkeiten installieren
npm insall
```

**/etc/systemd/system/homeserver.service**

```
[Unit]
Description=VR Server
After=network.target

[Service]
Type=simple
User=root
Group=root
WorkingDirectory=/gitlab/hilderonny/homeserver/vrserver
ExecStart=/usr/bin/nodemon --ignore public/ --ignore README.md --ignore doc/ index.js
Restart=on-abort

[Install]
WantedBy=multi-user.target
```

```sh
systemctl enable vrserver.service
service vrserver start
```