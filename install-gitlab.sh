#!/usr/bin/bash
sudo apt-get update
sudo apt-get install -y curl openssh-server ca-certificates tzdata perl
# sudo apt-get install -y postfix
curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | sudo bash
sudo EXTERNAL_URL="https://$1" apt-get install gitlab-ce
