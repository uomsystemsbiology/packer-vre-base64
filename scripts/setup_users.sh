sed -i -e '/Defaults\s\+env_reset/a Defaults\texempt_group=sudo' /etc/sudoers
sed -i -e 's/%sudo  ALL=(ALL:ALL) ALL/%sudo  ALL=NOPASSWD:ALL/g' /etc/sudoers

#Set up vagrant user if not already there
sudo adduser --quiet --disabled-password --gecos "" vagrant
sudo echo "vagrant:vagrant" | sudo chpasswd
sudo adduser vagrant sudo

#Set up sbl user if not already there
sudo adduser --quiet --disabled-password --gecos "" sbl
sudo echo "sbl:sbl" | sudo chpasswd
sudo adduser sbl sudo

