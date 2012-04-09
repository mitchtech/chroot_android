echo " "
echo "Ubuntu chroot installer"
echo " "
mount -o rw,remount -t yaffs2 /dev/block/mtdblock3 /system
echo "Cleaning up old Chunks . . ."
rm /system/bin/ubuntu
rm /system/bin/startubuntu
rm /system/bin/stopubuntu
echo "Creating directories . . ."
if [ ! -d /data/local/ubuntu ]
then
mkdir /data/local/ubuntu
fi
echo "Setting up files . . ."
cp -f ubuntu /system/bin
cp -f startubuntu /system/bin
cp -f stopubuntu /system/bin
chmod 755 /system/bin/ubuntu
chmod 755 /system/bin/startubuntu
chmod 755 /system/bin/stopubuntu
echo "Ubuntu chroot configured!"
echo " "
echo "to boot Ubuntu type 'startubuntu'"
echo "once booted, to gain shell, type 'ubuntu'"
echo "to shutdown type 'stopubuntu'"
echo " "
mount -o ro,remount -t yaffs2 /dev/block/mtdblock3 /system
