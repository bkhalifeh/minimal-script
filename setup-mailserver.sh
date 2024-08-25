#!/usr/bin/bash
echo "Enter your domain:"
read domain
mkdir -p ~/postio/data
docker run -d --net=host -e "DISABLE_CLAMAV=TRUE" -e "DISABLE_RSPAMD=TRUE"  -e TZ=Iran -v ~/postio/data:/data --name "mailserver" -h "$domain" -t analogic/poste.io
