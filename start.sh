#!/bin/sh

echo "PORT from Railway: $PORT"

sed "s/PORT_PLACEHOLDER/$PORT/g" /etc/xray/config.template.json > /etc/xray/config.json

cat /etc/xray/config.json

/usr/bin/xray -config /etc/xray/config.json
