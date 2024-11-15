FROM nginx:alpine


RUN apk add --no-cache mysql mysql-client

COPY your-web-app /usr/share/nginx/html

EXPOSE 80 3306

CMD ["sh", "-c", "nginx -g 'daemon off;' & mysqld"]
