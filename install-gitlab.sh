#!/usr/bin/bash
sudo apt-get update
sudo apt-get install -y curl openssh-server ca-certificates tzdata perl
# sudo apt-get install -y postfix
curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | sudo bash
echo "Enter gitlan domain:"
read dname
sudo EXTERNAL_URL="https://$dname" apt-get install gitlab-ce
