
echo "Configuring the phusion baseimage to allow ssh with passwords"
sudo rm -f /etc/service/sshd/down
/etc/my_init.d/00_regen_ssh_host_keys.sh
