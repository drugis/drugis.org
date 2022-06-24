FROM nginx

ADD _site /usr/share/nginx/html

COPY deploy/nginx/redirect.conf /etc/nginx/redirect.d
COPY deploy/nginx/default.conf /etc/nginx/conf.d
