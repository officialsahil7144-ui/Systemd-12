#!/usr/bin/env bash
set -e

echo "Systemd Service Inspection"
echo "--------------------------"

if command -v systemctl >/dev/null 2>&1; then
    echo
    echo "Systemd status:"
    systemctl is-system-running || true

    echo
    echo "Cron service status:"
    systemctl is-active cron || true

    echo
    echo "Failed services:"
    systemctl --failed --no-pager || true
else
    echo "systemctl is not available on this system."
fi

echo
echo "Inspection completed."
