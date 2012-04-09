echo " "
echo "BackTrack Chroot v0.1 installer"
echo " "
mount -o rw,remount -t yaffs2 /dev/block/mtdblock3 /system
echo "Cleaning up old Chunks . . ."
rm /system/bin/bt
rm /system/bin/startbt
rm /system/bin/stopbt
echo "Creating necessary directories . . ."
if [ ! -d /data/local/bt ]
then
mkdir /data/local/bt
fi
echo "Setting up files . . ."
cp -f bt /system/bin
cp -f startbt /system/bin
cp -f stopbt /system/bin
chmod 755 /system/bin/bt
chmod 755 /system/bin/startbt
chmod 755 /system/bin/stopbt
echo "BackTrack ready!"
echo " "
echo "to start BackTrack type 'startbt'"
echo "once BT started, to gain shell type 'bt'"
echo "to shutdown type 'stopbt'"
mount -o ro,remount -t yaffs2 /dev/block/mtdblock3 /system
