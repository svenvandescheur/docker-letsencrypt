#!/bin/bash

# Script to link nginx certificates to Lets Encrypt

# Summary:
# --------
# * Run cerbot


# Run certbot
certbot certonly --webroot --webroot-path /srv/nginx -n --agree-tos -m svenvandescheur@gmail.com -d svenv.nl -d www.svenv.nl
