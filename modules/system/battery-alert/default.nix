{ pkgs, values, ... }: {

	home-manager.users.${values.mainuser} = {
		home.file.".scripts/battery-alert".source = ./scripts;
		systemd.user = {
			enable = true;

			services = {
				battery-alert = {
					Unit = {
						Description = "Low battery warning";
					};
					Service = {
						ExecStart = "${pkgs.zsh}/bin/zsh ${./scripts/battery-alert.sh}";
						Environment = [
							"DISPLAY=:0"
							"XDG_RUNTIME_DIR=/run/user/$UID"
						];
					};
					Install = {
						WantedBy = [ "default.target" ];
					};
				};
			};

			timers = {
				battery-alert = {
					Unit = {
						Description = "minutely timer for low battery alert";
					};
					Timer = {
						OnCalendar = "*:0/1";
					};
					Install = {
						WantedBy = [ "timers.target" ];
					};
				};
			};

		};
	};
}
