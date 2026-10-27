#!/usr/bin/env bash 
echo "Systemd version:" 
systemctl --version | head -n 1 
echo 
echo "Current default target:" 
systemctl get-default 
echo 
echo "Selected service status (read-only):" 
systemctl --no-pager --full status cron 2>&1 | head -n 8 || true 
echo 
echo "Timer units (first 10):" 
systemctl list-timers --all --no-pager | head -n 12 
