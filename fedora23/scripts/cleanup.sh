/usr/bin/rm -fr VBoxGuestAdditions_*.iso
/usr/bin/rm -fr /tmp/rubygems-*
/usr/bin/dnf clean all
# Delete dnf history
/usr/bin/rm -fr /var/lib/dnf/history/*
# Delete the dnf cache
/usr/bin/rm -fr /var/cache/dnf/*
