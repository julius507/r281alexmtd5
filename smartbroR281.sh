#!/bin/sh
echo "Unlocking and Disabling Updates..."
ubus call version set_atcmd_info '{"atcmd":"AT*PROD=2"}' > /dev/null 2&>1
ubus call version set_atcmd_info '{"atcmd":"AT*MRD_IMEI=D"}' > /dev/null 2&>1
ubus call version set_atcmd_info '{"atcmd":"AT*PROD=0"}' > /dev/null 2&>1
echo "Done!"
echo "Installing Band Locking Features..."
wget http://github.com/julius507/smartalexv5/raw/master/Smartbror281v5.bin -O /tmp/firmware.bin
echo "Done! Wait for the modem to reboot..."
mtd -r write /tmp/firmware.bin /dev/mtd5














































