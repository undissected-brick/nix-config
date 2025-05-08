batteryStatus=$(cat /sys/class/power_supply/BAT*/capacity)

if [ $batteryStatus -le 15 ]
then
	notify-send "battery low!"
fi
