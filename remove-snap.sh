#!/bin/bash

# Ensure script is run as root
if [[ $EUID -ne 0 ]]; then
  echo "Please run this script with sudo or as root."
  exit 1
fi

echo "Removing all Snap packages..."
snap list | awk 'NR>1 {print $1}' | xargs -rn1 snap remove --purge

echo "Stopping snapd service..."
systemctl stop snapd
systemctl disable snapd

echo "Removing snapd and related packages..."
apt purge -y snapd
apt autoremove -y
apt clean

echo "Removing remaining Snap directories..."
rm -rf ~/snap
rm -rf /snap
rm -rf /var/snap
rm -rf /var/lib/snapd
rm -rf /var/cache/snapd

echo "Blocking snapd from being installed again via apt..."
cat <<EOF > /etc/apt/preferences.d/nosnap.pref
Package: snapd
Pin: release a=*
Pin-Priority: -10
EOF

echo "Snap has been removed from your system."
