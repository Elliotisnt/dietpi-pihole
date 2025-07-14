#!/usr/bin/env bash
# copy the two systemd unit files right folder and enable timer

set -e

cp ../systemd/next-wake.* /etc/systemd/system/
systemctl daemon-reload
systemctl enable --now next-wake.timer

echo "RTC wake timer installed and enabled."
