#!/bin/bash
sudo su
echo '> Cleaning all audit logs ...'
if [ -f /var/log/audit/audit.log ]; then
cat /dev/null > /var/log/audit/audit.log
fi
if [ -f /var/log/wtmp ]; then
cat /dev/null > /var/log/wtmp
fi
if [ -f /var/log/lastlog ]; then
cat /dev/null > /var/log/lastlog
fi
# Cleans SSH keys.
echo '> Installing service to generate new SSH keys on reboot ...'
echo '#!/bin/bash

# Regenerate SSH host keys
rm -f /etc/ssh/ssh_host_*
dpkg-reconfigure openssh-server

# Remove the script to ensure it runs only once
rm -f /etc/systemd/system/regenerate-ssh-keys.service
rm -f /usr/local/bin/regenerate-ssh-keys.sh' > /usr/local/bin/regenerate-ssh-keys.sh
chmod +x /usr/local/bin/regenerate-ssh-keys.sh
echo '[Unit]
Description=Regenerate SSH Host Keys
After=network.target

[Service]
Type=oneshot
ExecStart=/usr/local/bin/regenerate-ssh-keys.sh

[Install]
WantedBy=multi-user.target
' > /etc/systemd/system/regenerate-ssh-keys.service
sudo systemctl enable regenerate-ssh-keys.service
# Sets hostname to localhost.
echo '> Setting hostname to localhost ...'
cat /dev/null > /etc/hostname
hostnamectl set-hostname localhost
# Cleans apt-get.
echo '> Cleaning yum ...'
yum clean all
# Cleans the machine-id.
echo '> Cleaning the machine-id ...'
truncate -s 0 /etc/machine-id
