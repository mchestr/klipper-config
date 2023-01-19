#!/bin/bash
cd ~

SRC=$(pwd)/klipper-config

NAME=iiip
DST=$(pwd)/${NAME}_data
rm -rf ${NAME}_data/config
ln -s ${SRC}/${NAME} ${DST}/config
ln -s ${SRC}/common/macros ${DST}/config/common_macros
ln -s ${SRC}/common/power ${DST}/config/common_power
ln -s ${SRC}/common/notifiers ${DST}/config/common_notifiers

cd ${DST}/config
git clone https://github.com/jschuh/klipper-macros.git

# Certs
ln -s /etc/ssl/snakeoil.pem ${DST}/moonraker.cert
ln -s /etc/ssl/snakeoil.pem ${DST}/moonraker.key

NAME=ender
DST=$(pwd)/${NAME}_data
rm -rf ${NAME}_data/config
ln -s ${SRC}/${NAME} ${DST}/config
ln -s ${SRC}/common/macros ${DST}/config/common_macros
ln -s ${SRC}/common/power ${DST}/config/common_power
ln -s ${SRC}/common/notifiers ${DST}/config/common_notifiers

cd ${DST}/config
git clone https://github.com/jschuh/klipper-macros.git

# Certs
ln -s /etc/ssl/snakeoil.pem ${DST}/moonraker.cert
ln -s /etc/ssl/snakeoil.pem ${DST}/moonraker.key
