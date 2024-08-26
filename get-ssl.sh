#!/usr/bin/bash
MARKER_FILE="$HOME/.acme_initialized"
if [ ! -f "$MARKER_FILE" ]; then
    echo "Enter your email:"
    read email
    curl https://get.acme.sh | sh -s email="$email"
    ~/.acme.sh/acme.sh --set-default-ca --server letsencrypt
    apt-get install socat
    touch "$MARKER_FILE"
fi
echo "Enter your domain:"
read domain
~/.acme.sh/acme.sh --issue -d $domain --standalone
