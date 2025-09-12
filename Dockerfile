FROM esme518/docker-nginx-with-subs_filter:latest

COPY 99-generate-configuration.sh /docker-entrypoint.d
COPY nginx.template /nginx.template

ENV NGX_ADDR localhost
ENV NGX_PORT 8080
ENV NGX_UA '$http_user_agent'
ENV M3U_URL ''
