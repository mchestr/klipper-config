#!/bin/bash
SRC=$HOME/klipper-config;
PRINTERS="ender iiip";

for PRINTER in ${PRINTERS}; do
    DST="$HOME/${PRINTER}_data";
    rm -rf "${DST}/config";
    ln -s "${SRC}/${PRINTER}" "${DST}/config";

    ln -s "${SRC}/common/macros" "${DST}/config/common_macros";
    ln -s "${SRC}/common/power" "${DST}/config/common_power";
    ln -s "${SRC}/common/notifiers" "${DST}/config/common_notifiers";

    git clone https://github.com/jschuh/klipper-macros.git ${DST}/config/klipper-macros

    # Certs
    ln -s /etc/ssl/snakeoil.pem "${DST}/certs/moonraker.cert";
    ln -s /etc/ssl/snakeoil.pem "${DST}/certs/moonraker.key";
done;
