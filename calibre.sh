#!/bin/bash
#Configuracion de calibre server
systemctl stop calibre-serve
cp /home/fzt-iiab/calibre-serve.service /etc/systemd/system/calibre-serve.service
cp /home/fzt-iiab/users.sqlite /library/calibre/users.sqlite
chmod 777 /library/calibre
systemctl daemon-reload
systemctl start calibre-serve

