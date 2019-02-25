# Remove VBoxAdditions iso and Ruby gems
rm -rf VBoxGuestAdditions_*.iso
rm -rf /tmp/rubygems-*

# Clean yum repo and reset history
yum -y history new
yum -y clean all

# Remove subscriptions
subscription-manager remove --all
subscription-manager unregister
subscription-manager clean

# Remove files that contain suprfluous information
rm -f /root/anaconda-ks.cfg
rm -f /root/original-ks.cfg
