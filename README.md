# renewLetsEncrypt
Renew Lets Encrypt certificates

Attempt to renew Lets Encrypt certificates every two months

I couldn't find an automated method of renewing the certificates used, so I tried to do this using systemd.

Nginx points to the certificates that are stored in '/etc/letsencrypt/live'
There is also server listening on port 80 for the 'acme-challenge'.


