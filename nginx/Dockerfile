FROM nginx:stable-alpine

COPY entrypoint.sh /entrypoint.sh

RUN sed -i -e '/keepalive_timeout/a\    client_max_body_size 10000m;' -e '/gzip/a\    server_tokens off;' /etc/nginx/nginx.conf
RUN chmod +x /entrypoint.sh && \
    ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo Asia/Shanghai > /etc/timezone

CMD ["/entrypoint.sh"]