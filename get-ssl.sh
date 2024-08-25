#!/usr/bin/bash
echo "Enter your email:"
read email
echo "Enter your domain:"
read domain
curl https://get.acme.sh | sh -s email="$email"
~/.acme.sh/acme.sh --set-default-ca --server letsencrypt
mkdir -p ~/domains/$domain/certs
acme.sh --issue -d $domain --standalone -w ~/domains/$domain/certs
