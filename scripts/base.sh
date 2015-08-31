apt-get update
apt-get -y install \
linux-headers-$(uname -r) \
make \
gcc \
wget \
subversion \
dpkg \
unzip\
git
apt-get -y install software-properties-common

echo "UseDNS no" >> /etc/ssh/sshd_config
#echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config
#sudo sed -i "s#\(PasswordAuthentication *\).*#\1yes#" /etc/ssh/sshd_config
sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
sudo sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config
sudo sed -i 's/ChallengeResponseAuthentication no/ChallengeResponseAuthentication yes/' /etc/ssh/sshd_config