{ pkgs, values, ... }: {
	systemd.services.battery-alert = {
		serviceConfig.Type = "exec";
		script = ''
			${pkgs.zsh}/bin/zsh /home/${values.mainuser}/.scripts/battery-alert/battery-alert.sh
		'';
	};

	systemd.timers.battery-alert = {
		wantedBy = [ "timers.target" ];
		partOf = [ "battery-alert.service" ];
		timerConfig = {
			OnCalendar = "*:0/1";
			Unit = "battery-alert.service";
		};
	};

	home-manager.users.${values.mainuser}.home.file.".scripts/battery-alert".source = ./scripts;
}
