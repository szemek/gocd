#!/bin/bash
set -e
mkdir -p /var/go/.ssh
echo "${SSH_ID_RSA}" > /var/go/.ssh/id_rsa
chown -R go:go /var/go/.ssh
chmod 0400 /var/go/.ssh/id_rsa
