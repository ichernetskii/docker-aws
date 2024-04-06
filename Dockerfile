FROM nginx:1.24-alpine

RUN rm /etc/nginx/conf.d/default.conf

COPY /nginx/* /etc/nginx/conf.d/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
