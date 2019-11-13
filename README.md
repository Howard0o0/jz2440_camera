# uboot 

set 'nand read 30000000 kernel;bootm 30000000'

set machid 16a

set ipaddr "your board ip"

set serverip "your ubuntu server ip"



save

## boot from nfs:
set bootargs root=/dev/nfs nfsroot=172.16.157.17:/home/howard/work/jz2440/myproject/camera/jz2440_camera/fileSystem/fs_mjpeg_ssh ip=172.16.157.97:172.16.157.17:172.16.157.254:255.255.255.0::eth0:off  console=ttySAC0,115200

### usage:

nfsroot = [server-ip:]root-dir
ip=\<client-ip>:\<server-ip>:\<gw-ip>:\<netmask>:\<hostname>:\<device>:\<autoconf>

## boot from NANDFLASH:

set bootargs console=ttySAC0,115200 root=/dev/mtdblock3


# kernel 

cd kernel-3.4.2

make uImage


	
