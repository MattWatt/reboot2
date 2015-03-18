# reboot2
Reboot Raspberry Pi's NOOBS to a specific partition.
For information on NOOBS see https://github.com/raspberrypi/noobs

### Install
- Place the reboot2.sh file in '/usr/local/bin'
- `sudo chmod +x /usr/local/bin/reboot2`

### Usage
From the command line, `$ reboot2 <partition_#>`, will call a system reboot and boot with the specified partition #.  This should correspond to one of the FAT boot partitions for an installed OS.  NOTE: This will not change the default boot partition.