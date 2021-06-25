sudo apt update
sudo apt install lirc figlet php -y
sudo cp /etc/modules /etc/modules.bak
echo "lirc_dev" >> /etc/modules
echo "lirc_rpi gpio_in_pin=23 gpio_out_pin=22" >> /etc/modules
sudo cp /boot/config.txt /boot/config.txt.bak
echo "dtoverlay=lirc-rpi,gpio_in_pin=23,gpio_out_pin=22" >> /boot/config.txt
touch /etc/lirc/hardware.conf
cat ./lirc-hardware.conf >> /etc/lirc/hardware.conf
sudo cp /etc/lirc/lirc_options.conf /etc/lirc/lirc_options.conf.bak
cat ./lirc-lirc_options.conf >> /etc/lirc/lirc_options.conf
clear
figlet -f small kaori
printf "\n\nThe system must now restart.\nRun start.sh when it's back up to start kaori.\n\n"
sleep 10
clear
printf "\nRestarting now...\n\n"
sleep 2
sudo shutdown -r now