#! /bin/sh
# Modify the default boot partition & Execute the reboot command

if [ -z "$1" ]; then
        echo "Error: Partition parameter not defined!"
        exit 1
else
        BOOT_PART=$1
fi

#Get the CPU Family
CPUFAM=$(cat /proc/cpuinfo | grep -o "Hardware.*" | sed "s/.*Hardware\s*:\s*\(.*\)/\1/")
CPUFAM=$(echo $CPUFAM | tr '[:upper:]' '[:lower:]')

# Set the desired boot partition & call reboot
sudo su -c "echo $BOOT_PART > /sys/module/$CPUFAM/parameters/reboot_part"
sudo reboot
