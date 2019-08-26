wipefs --all /dev/sda
./partition.sh
mkfs.fat -F32 /dev/sda1
mkfs.ext4 /dev/sda2
mount /dev/sda2 /mnt
mkdir /mnt/boot
mount /dev/sda1 /mnt/boot
pacman -Sy
pacman -S reflector --noconfirm
reflector --country "Australia" -f 10 /etc/pacman.d/mirrorlist
pacstrap /mnt base
genfstab -U /mnt >> /mnt/etc/fstab
