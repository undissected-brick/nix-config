batteryStatus=$(cat /sys/class/power_supply/BAT0/capacity)

if [ $batteryStatus -le 15 ]
then
	notify-send battery low!
fi
