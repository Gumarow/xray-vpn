#!/bin/sh

PORT=${PORT:-8080}

echo "Starting Xray on port $PORT"

sed "s/PORT_PLACEHOLDER/$PORT/g" /etc/xray/config.template.json > /etc/xray/config.json

cat /etc/xray/config.json

/usr/bin/xray -config /etc/xray/config.json
