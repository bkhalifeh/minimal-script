#!/usr/bin/bash
echo "Enter your email:"
read email
echo "Enter your domain:"
read domain
curl https://get.acme.sh | sh -s email="$email"
~/.acme.sh/acme.sh --set-default-ca --server letsencrypt
apt-get install socat
~/.acme.sh/acme.sh --issue -d $domain --standalone
