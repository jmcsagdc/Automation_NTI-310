# Run this on NFS SERVER and scp the output file to the clients for now


# The following commented lines are there if we want to distinguish the 
# mount locations from the OS versions of the same.
#mkdir -p /mnt/nfs/home
#mkdir -p /mnt/nfs/var/nfs

#mount <server>:/home /mnt/nfs/home
#mount <sever>:/var/nfs /mnt/nfs/var/nfs

echo "mount `hostname`:/home /home" >> nfsclients_mount.sh
echo "mount `hostname`:/var/dev /dev" >> nfsclients_mount.sh
echo "mount `hostname`:/var/config /config" >> nfsclients_mount.sh
echo >> nfsclients_mount.sh
echo "echo \"#####################    Echo into fstab on CLIENT   #####################\"" >> nfsclients_mount.sh
echo "echo \"`hostname`:/home   /home   nfs    auto  0  0\"" >> nfsclients_mount.sh
echo "echo \"`hostname`:/var/dev   /dev   nfs    auto  0  0\"" >> nfsclients_mount.sh
echo "echo \"`hostname`:/var/config   /config   nfs    auto  0  0\"" >> nfsclients_mount.sh
echo "Copy the file nfsclients_mount.sh to the client and run it there."
