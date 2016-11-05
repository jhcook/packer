/usr/bin/date > /etc/vagrant_box_build_time

/usr/bin/mkdir -pm 700 /home/vagrant/.ssh
/usr/bin/curl -L https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub \
  -o /home/vagrant/.ssh/authorized_keys
/usr/bin/chmod 0600 /home/vagrant/.ssh/authorized_keys
/usr/bin/chown -R vagrant:vagrant /home/vagrant/.ssh
