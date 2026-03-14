#!/bin/sh
# получаем порт от платформы (если не задан, используем 8080)
PORT="${PORT:-8080}"
# подставляем порт в шаблон
sed "s/PORT_PLACEHOLDER/${PORT}/g" /etc/xray/config.template.json > /etc/xray/config.json
# запускаем xray (в образе teddysun/xray команда xray должна быть в PATH)
exec xray -c /etc/xray/config.json
