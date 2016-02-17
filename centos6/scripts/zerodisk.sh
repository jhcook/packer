# This optimizes the build size by zeroing out the entire disk
dd if=/dev/zero of=/EMPTY bs=4096
sleep 5
rm -f /EMPTY
sleep 5
