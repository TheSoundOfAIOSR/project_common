#!/bin/bash
NEW_USER=ai

adduser --disabled-password --gecos "" ${NEW_USER}

usermod -aG sudo ${NEW_USER}

tee /etc/sudoers.d/ai <<_EOF
ai ALL=(ALL) NOPASSWD:ALL
_EOF

tee /etc/wsl.conf <<_EOF
[user]
default=${NEW_USER}
_EOF

apt update -y && apt upgrade -y