#!/bin/sh
#
# /usr/lib/systemd/scripts/renewCertificates.sh
#
# Script to run the Lets Encrypt certificate renewal and reload Nginx.
#
# First, generate the certificates, then reload Nginx and check the logs to make sure it reloaded OK.
#
# Last revised 2/1/2016
#

export DOMAINS="-d example.com"
export DIR=/usr/share/www/letsencrypt/public_html/

/root/.local/share/letsencrypt/bin/letsencrypt --renew certonly -a webroot --webroot-path $DIR $DOMAINS

systemctl reload nginx

journalctl --no-pager -n 1 -u nginx
