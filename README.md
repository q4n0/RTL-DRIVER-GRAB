I DO NOT OWN THE DRIVER COMPILER. ALL CREDITS GO THE ORIGINAL OWNER THIS IS JUST AN AUTOMATED INSTALLER I MADE 

Compatible with Linux kernel versions 5.4 and newer as long as your distro hasn't modified any kernel APIs.

⚠️ Ubuntu users, expect API changes! We will not modify the source for you. You are on your own!
Supported Cards

    PCIe: RTW8822BE, RTW8822CE, RTW8821CE, RTW8723DE
    USB: RTW8822BU, RTW8822CU, RTW8821CU, RTW8723DU
    SDIO: RTW8822BS, RTW8822CS, RTW8821CS, RTW8723DS


These are RTL DRIVER INSTALLER AND UPDATER SCRIPTS. YES YOU NEED BOTH INCASE YOU UPGRADE YOUR KERNEL TO A NEWER VERSION WORKS WITH ALL LINUX KERNEL VERION 6.XXX  

#Clone repo 
    git clone https://github.com/q4n0/RTL-DRIVER-GRAB
#Change into its directory 
    cd RTL-DRIVER-GRAB/myscripts
#Use admin priviledges with sudo to make it executable 
    sudo chmod +x secbootrtl88.sh
#Now execute and let magic happen
    sudo ./secbootrtl88.sh

    You will be prompted a password, please keep it in mind and use it in next steps.

Reboot to activate the new installed module, then in the MOK managerment screen:

    Select "Enroll key" and enroll the key created by above sign-install step
    When promted, enter the password you entered when create sign key.
    If you enter wrong password, your computer won't not bebootable. In this case, use the BOOT menu from your BIOS, to boot into your OS then do below steps:
sudo mokutil --reset

    Restart your computer.
    Use BOOT menu from BIOS to boot into your OS.
    In the MOK managerment screen, select reset MOK list.
    Reboot then retry script again

   Important Information

Below is important information for using this driver.
1. Blacklisting 🚫

If your system has ANY conflicting drivers installed, you must blacklist them as well. For kernels 5.6 and newer, this will include drivers such as rtw88_xxxx. Here is a useful link on how to blacklist a module.

Once you have reached this point, then reboot. Use the command lsmod | grep rtw and check if there are any conflicting drivers. The correct ones are:

    rtw_8723de rtw_8723du rtw_8723d  rtw_8822be  rtw_8822bu rtw8822bs rtw_8822b  rtw_8822ce  rtw_8822cu rtw_8822cs rtw_8821ce rtw_8821cu rtw_8821cs rtw_8822c rtw_8723ds rtw_core rtw_pci

If you have other modules installed, see if you blacklisted them correctly. 


UBUNTU USERS USE 
#Clone repo 
    git clone https://github.com/q4n0/RTL-DRIVER-GRAB
#Change into its directory 
    cd RTL-DRIVER-GRAB/myscripts
#Use admin priviledges with sudo to make it executable 
    sudo chmod +x debubrtlinstll.sh
#Now execute and let magic happen
    sudo ./debubrtlinstll.sh

FEDORA USERS USE
#Clone repo 
    git clone https://github.com/q4n0/RTL-DRIVER-GRAB
#Change into its directory 
    cd RTL-DRIVER-GRAB/myscripts
#Use admin priviledges with sudo to make it executable 
    sudo chmod +x fedrtlinstll.sh
#Now execute and let magic happen
    sudo ./fedrtlinstll.sh

OPENSUSE USERS USE 
#Clone repo 
    git clone https://github.com/q4n0/RTL-DRIVER-GRAB
#Change into its directory 
    cd RTL-DRIVER-GRAB/myscripts
#Use admin priviledges with sudo to make it executable 
    sudo chmod +x Osurtlinstll.sh
#Now execute and let magic happen
    sudo ./Osurtlinstll.sh

ARCH USERS USE 
#Clone repo 
    git clone https://github.com/q4n0/RTL-DRIVER-GRAB
#Change into its directory 
    cd RTL-DRIVER-GRAB/myscripts
#Use admin priviledges with sudo to make it executable 
    sudo chmod +x archrtlinstll.sh
#Now execute and let magic happen
    sudo ./archrtlinstll.sh

TROUBLESHOOTING 

UNLOAD AND RELOAD KERNEL USING
    sudo chmod +x unrldrtl88.sh
    sudo ./unrldrtl88.sh

Recovery Problems After Sleep/Hibernation 🛌
Some BIOSs have trouble changing power state from D3hot to D0. If you have this problem, then:
     sudo chmod +x slphib.sh
     sudo ./slphib.sh

   


INCASE YOU UPGRADE KERNEL USE 
#Use admin priviledges with sudo to make it executable
    sudo chmod +x rtlupdate.sh

#Now execute and let magic happen 
     sudo ./rtlupdate.sh
