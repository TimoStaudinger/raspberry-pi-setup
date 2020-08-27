# Set password to something other than the default

# Update software
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo rpi-update

# If connection fails on upgrade, switch to a different repository mirror
# Mirrors: https://www.raspbian.org/RaspbianMirrors
sudo nano /etc/apt/sources.list
sudo apt-get clean && sudo apt-get update

# Reboot the Raspberry Pi. Will have to reconnect SSH session
sudo reboot

# Install RDP server
sudo apt-get install xrdp

# Set static IP
sudo nano /etc/dhcpcd.conf
# Append settings, adjust to your network:
interface eth0
static ip_address=192.168.1.115
static routers=192.168.1.1
static domain_name_servers=192.168.1.1

# Set up DynDNS service; we're using no-ip

# Set up OpenVPN
curl -L https://install.pivpn.io | bash
# Run, and follow the wizard
# OpenVPN port: 1194
# Enable unattended upgrades