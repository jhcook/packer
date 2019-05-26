date > /etc/vagrant_box_build_time

mkdir -pm 700 /home/vagrant/.ssh
curl -L https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub -o /home/vagrant/.ssh/authorized_keys
chmod 0600 /home/vagrant/.ssh/authorized_keys
chown -R vagrant:vagrant /home/vagrant/.ssh
sed -ie 's/^#*UseDNS\ [a-zA-Z]\+/UseDNS no/' /etc/ssh/sshd_config
rm -f /etc/udev/rules.d/70-persistent-net.rules || /bin/true
