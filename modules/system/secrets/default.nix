# gnome-keyring setup from github.com/jordanisaacs/dotfiles
{ pkgs, ... }: {
	environment.systemPackages = [ pkgs.libsecret ];
	services.gnome.gnome-keyring.enable = true;
	services.dbus.packages = [ pkgs.seahorse ];

	systemd.user.services.gnome-keyring = {
		unitConfig = {
			Description = "GNOME Keyring";
			PartOf = [ "graphical-session-pre.target" ];
		};

		serviceConfig = {
			ExecStart = "/run/wrappers/bin/gnome-keyring-daemon --start --foreground";
			Restart = "on-abort";
		};

		wantedBy = [ "graphical-session-pre.target" ]; 
	};
}
