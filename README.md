# homeserver

Der Home Server im Keller enthält Spiele, Website-Kopien, Medien und einen VR-Server.

Beim Login wird sowohl lokal als auch per SSH ein [Login-Banner](./loginbanner) angezeigt, der Infos über Anmeldung und über die ersten Schritte zur Verwendung gibt. Also wo die Quellen und die Doku liegen.

## Features

* [VR Server](vrserver/README.md)

## Grundinstallation

```
mkdir -p /gitlab/hilderonny
cd /gitlab/hilderonny
git clone https://gitlab.com/hilderonny/homeserver.git
cd homeserver
git config credential.helper store
sh ./install.sh
```

## Festplatten

|Position|Device|Mount-Punkt|Größe|Inhalt|
|---|---|---|---|---|
||/dev/sda2|/|1,5 TB|Root-Partition, Node-Anwendungen unter /gitlab/...|
||/dev/sdb|/mnt/disk2|1 TB|Wikipedia, npm, Ubuntu|
||/dev/sdc|/mnt/disk3|1 TB|Minecraft server, Minetest server|
||/dev/sdd|/mnt/disk4|1 TB|Medien|
