# Restore original fedora-updates.repo
/usr/bin/rm -f /etc/yum.repos.d/fedora-updates.repo
/usr/bin/mv /etc/yum.repos.d/fedora-updates.repo.orig \
  /etc/yum.repos.d/fedora-updates.repo

# Delete VBoxAdditions iso, associated Ruby gems and clean dnf cache
/usr/bin/rm -fr VBoxGuestAdditions_*.iso
/usr/bin/rm -fr /tmp/rubygems-*
/usr/bin/dnf clean all

# Delete dnf history
/usr/bin/rm -fr /var/lib/dnf/history/*

# Delete the dnf cache
/usr/bin/rm -fr /var/cache/dnf/*
