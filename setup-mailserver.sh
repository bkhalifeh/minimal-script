#!/usr/bin/bash
echo "Enter your domain:"
read domain
mkdir -p ~/postio/data
docker run -d -p 25:25 -p 110:110 -p 143:143 -p 465:465 -p 587:587 -p 993:993 -p 995:995  -e "DISABLE_CLAMAV=TRUE" -e "DISABLE_RSPAMD=TRUE" -e "HTTP_PORT=4001" -p 127.0.0.1:4001:4001 -e "HTTPS_PORT=4002" -p 127.0.0.1:4002:4002 -p 4190:4190  -e TZ=Iran -v ~/postio/data:/data --name "mailserver" -h "$domain" -t analogic/poste.io:2.4.7
