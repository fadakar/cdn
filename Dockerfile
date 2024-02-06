FROM nginx:latest

WORKDIR /app

COPY nginx.conf /etc/nginx/nginx.conf

COPY fullchain.pem /cert/fullchain.pem

COPY privkey.pem /cert/privkey.pem

RUN chown -R www-data:www-data .


CMD ["sh", "-c", " nginx -g \"daemon off;\""]
