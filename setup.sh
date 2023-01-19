#!/bin/bash
cd ~
SRC=$(pwd)/klipper-config
PRINTERS="ender iiip"

for PRINTER in "${PRINTERS}"; do
    cd ~

    DST=$(pwd)/${PRINTER}_data
    rm -rf ${DST}/config
    ln -s ${SRC}/${PRINTER} ${DST}/config

    cd ${DST}/config
    git clone https://github.com/jschuh/klipper-macros.git

    # Certs
    ln -s /etc/ssl/snakeoil.pem ${DST}/certs/moonraker.cert
    ln -s /etc/ssl/snakeoil.pem ${DST}/certs/moonraker.key
done;
