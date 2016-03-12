# Change to default CentOS6 repo config
/usr/bin/rm -f /etc/yum.repos.d/CentOS-Base.repo.repo
/usr/bin/mv /etc/yum.repos.d/CentOS-Base.repo.orig \
  /etc/yum.repos.d/CentOS-Base.repo

# Remove VBoxAdditions iso and Ruby gems
rm -rf VBoxGuestAdditions_*.iso
rm -rf /tmp/rubygems-*

# Clean yum repo and reset history
yum history new
yum clean all
