{ pkgs, values, ... }: {
	systemd.services.battery-alert = {
		serviceConfig.Type = "oneshot";
		path = with pkgs; [ bash ];
		script = ''
			bash /home/${values.mainuser}/${values.flakeDir}/modules/system/battery-alert/battery-alert.sh
		'';
	};

	systemd.timers.battery-alert = {
		wantedBy = [ "timers.target" ];
		partOf = [ "battery-alert.service" ];
		timerConfig = {
			OnCalendar = "*:00";
			Unit = "battery-alert.service";
		};
	};
}
