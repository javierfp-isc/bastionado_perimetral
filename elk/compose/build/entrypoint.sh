#!/bin/bash

#Si existe el archivo /etc/routes lo ejecuta
[ -f /etc/routes ] && sh /etc/routes

#Establece los servidores DNS a 8.8.8.8 y 8.8.4.4
echo "nameserver 8.8.8.8" > /etc/resolv.conf
echo "nameserver 8.8.4.4" >> /etc/resolv.conf

#Lanza el proceso de arranque dentro de la imagen
/usr/local/bin/start.sh

#Uso exec para lanzar un proceso independiente de bucle infinito
exec bash -c "while true;do sleep 10;done"
