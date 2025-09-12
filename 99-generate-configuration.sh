#!/bin/sh

set -eu

sed "s|NGX_ADDR|$NGX_ADDR|g; s|NGX_PORT|$NGX_PORT|g; s|NGX_UA|$NGX_UA|g; s|M3U_URL|${M3U_URL//&/\\&}|g" /nginx.template > /etc/nginx/conf.d/default.conf
