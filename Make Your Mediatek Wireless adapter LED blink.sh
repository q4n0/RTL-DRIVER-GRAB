#A simple script i made for turning the LED LIGHT IN MEDIATEK WIRELESS DRIVERS 

#Identify the Device:
#Plug in your USB wireless adapter and use the following command to get information about it:

lsusb

#Note down the vendor ID and product ID of your device.

#Create the Script:
#Create a script that you want to execute when the USB wireless adapter is inserted. For example, create a script at /usr/local/bin/usb_inserted.sh:


#!/bin/bash
echo "USB Wireless Adapter Inserted" > /tmp/usb_inserted.log
# Add your custom commands here
PHY_PATH=$(ls /sys/kernel/debug/ieee80211/phy*/mt76 -d)
echo 0x770 > ${PHY_PATH}/regidx
#Uncomment a line based on usage case 
# echo 0x800000 > ${PHY_PATH}/regval # Turns LED ON
# echo 0x820000 > ${PHY_PATH}/regval # Turns LED OFF
# echo 0x840000 > ${PHY_PATH}/regval # Makes LED BLINK
#!/bin/bash
echo "USB Wireless Adapter Inserted" > /tmp/usb_inserted.log
#These commands here will trigger the led light to blinking/on/off uncomment the line repectively to your usage!
#Make the script executable:

sudo chmod +x /usr/local/bin/usb_inserted.sh

#Create a udev Rule:
#Create a new udev rule file in the /etc/udev/rules.d directory. For example, create a file named 99-usb-wireless.rules:

sudo nano /etc/udev/rules.d/99-usb-wireless.rules

#Add the following content to the file, replacing YOUR_VENDOR_ID and YOUR_PRODUCT_ID with the actual IDs from step 1:

ACTION=="add", SUBSYSTEM=="usb", ATTR{idVendor}=="YOUR_VENDOR_ID", ATTR{idProduct}=="YOUR_PRODUCT_ID", RUN+="/usr/local/bin/usb_inserted.sh"

#Reload udev Rules:
#Reload the udev rules to apply your changes:

    sudo udevadm control --reload-rules

#Test:
#Unplug and reinsert your USB wireless adapter. Your script should execute automatically.

#This setup allows you to run any custom script whenever your USB wireless adapter is inserted. Adjust the script and udev rule according to your specific requirements.


#Example of what a vendor ID and product ID would look like in lsusb
Bus 002 Device 005: ID 0e8d:7612 MediaTek Inc. MT7612U 802.11a/b/g/n/ac Wireless Adapter

    #Vendor ID is 0e8d
    #Product ID is 7612

#So, your udev rule would look like this:
ACTION=="add", SUBSYSTEM=="usb", ATTR{idVendor}=="0e8d", ATTR{idProduct}=="7612", RUN+="/usr/local/bin/usb_inserted.sh"

