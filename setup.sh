#!/bin/bash
cd ~

SRC=$(pwd)/klipper-config

NAME=iiip
DST=$(pwd)/${NAME}_data
rm -rf ${DST}/config
ln -s ${SRC}/${NAME} ${DST}/config

cd ${DST}/config
git clone https://github.com/jschuh/klipper-macros.git

# Certs
ln -s /etc/ssl/snakeoil.pem ${DST}/certs/moonraker.cert
ln -s /etc/ssl/snakeoil.pem ${DST}/certs/moonraker.key

NAME=ender
DST=$(pwd)/${NAME}_data
rm -rf ${DST}/config
ln -s ${SRC}/${NAME} ${DST}/config

cd ${DST}/config
git clone https://github.com/jschuh/klipper-macros.git

# Certs
ln -s /etc/ssl/snakeoil.pem ${DST}/certs/moonraker.cert
ln -s /etc/ssl/snakeoil.pem ${DST}/certs/moonraker.key
