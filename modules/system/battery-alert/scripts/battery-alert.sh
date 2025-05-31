batteryStatus=$(cat /sys/class/power_supply/BAT*/capacity)
chargeStatus=$(cat /sys/class/power_supply/BAT*/status)

if [ $((batteryStatus)) -le 25 ]; then
  if [ "$chargeStatus" != "Charging" ]; then
    notify-send "battery low!"
  fi
fi
