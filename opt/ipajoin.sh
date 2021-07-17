#!/bin/bash
rm -rf /opt/ipajoinpre.sh
rm -rf /opt/ipajoin.sh
systemctl disable ipajoin.service
rm -rf /etc/systemd/system/ipajoin.service
systemctl daemon-reload