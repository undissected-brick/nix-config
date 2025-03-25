{ values, ... }: {
	services.systemd.battery-alert = {
		serviceConfig.Type = "oneshot";
		path = with pkgs; [ bash ];
		script = ''
			bash /home/${values.mainuser}/${values.flakeDir}/modules/system/battery-alert/battery-alert.sh
		''
	};

	services.timer.battery-alert = {
		wantedBy = [ "timers.target" ];
		partOf = [ "battery-alert.service" ];
		timerConfig = {
			OnCalendar = "*:0/1";
			Unit = "battery-alert.service";
		};
	};
}
