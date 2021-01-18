# OpenWrt-Online-LED-status
# Change LED color when internet connection is avaliable.

Small script to check internet connection  and change LED color accordingly. 
Tested working on OpenWrt 18.06.4 installed on Meraki MR12 and MR16 AP.

# Instruction 
copy check_internet.sh to your OpenWrt home folder. (/root/check_internet.sh)
change the "mr16\:green\:power/brightness" part according to your hardware.
chmod +x check_internet.sh
Go to OpenWrt web ui > System > Scheduled Tasks
put below line in schedule tasks to run the script every 5 minutes. 
*/5 * * * * /root/check_internet.sh
