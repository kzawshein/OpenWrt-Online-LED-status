# OpenWrt-Online-LED-status
# Change LED color when internet connection is avaliable.

Small script to check internet connection  and change LED color accordingly. <br>
Tested working on OpenWrt 18.06.4 installed on Meraki MR12 and MR16 AP.<br>

# Instruction 
copy check_internet.sh to your OpenWrt home folder. (/root/check_internet.sh)<br>
change the "mr16\:green\:power/brightness" part according to your hardware.<br>
chmod +x check_internet.sh<br>
Go to OpenWrt web ui > System > Scheduled Tasks<br>
put below line in schedule tasks to run the script every 5 minutes. <br>
*/5 * * * * /root/check_internet.sh<br>
