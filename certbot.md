# Certbot
https://certbot.eff.org/docs/using.html#manual
# certbot certonly --help
# certbot certonly --manual -d DOMAIN

## Provide laborious manual instructions for obtaining a certificate
```
% sudo certbot certonly --manual -d DOMAIN

# Upload the certs on Heroku
% sudo heroku certs:add /etc/letsencrypt/live/DOMAIN/fullchain.pem /etc/letsencrypt/live/DOMAIN/privkey.pem --type endpoint -a APP_NAME
```
