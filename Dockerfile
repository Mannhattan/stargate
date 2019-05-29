# FROM nginx:1.15.12-alpine
FROM nginx:alpine

RUN mkdir /etc/nginx/ssl
COPY config/ssl/* /etc/nginx/ssl/

COPY config/default.conf /etc/nginx/conf.d/

EXPOSE 80
EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]