FROM nginx:1.24-alpine

# Install certbot
RUN apk add --no-cache certbot

# Copy renew cron script
COPY /nginx/renew /etc/periodic/daily/renew
RUN chmod +x /etc/periodic/daily/renew

RUN mkdir /var/lib/certbot

# Copy entrypoint
COPY /nginx/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

RUN rm /etc/nginx/conf.d/default.conf

COPY /nginx/*.conf /etc/nginx/conf.d/

ENTRYPOINT [ "/entrypoint.sh" ]
