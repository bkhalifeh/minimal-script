#!/usr/bin/bash
sudo gitlab-ctl stop
sudo gitlab-ctl uninstall
sudo gitlab-ctl cleanse
sudo gitlab-ctl remove-accounts
sudo dpkg -P gitlab-ce
sudo rm -rf /opt/gitlab
sudo rm -rf /etc/gitlab
sudo rm -rf /var/opt/gitlab
sudo rm /etc/apt/sources.list.d/runner_gitlab-runner.list*
sudo rm /etc/apt/sources.list.d/gitlab_gitlab-ee.list*
sudo rm /etc/apt/sources.list.d/gitlab_gitlab-ce.list*
apt update
sudo shutdown -r now
