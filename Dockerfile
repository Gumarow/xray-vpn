FROM teddysun/xray:latest

COPY config.template.json /etc/xray/config.template.json
COPY start.sh /start.sh

RUN chmod +x /start.sh

CMD ["/start.sh"]
