$ fdisk /dev/sda << FDISK_CMDS
g
n
1
 
+512M
t
1
1
n
2
 
 
w
FDISK_CMDS