{ pkgs, ... }: {
	services.greetd = {
		enable = true;
		settings.default_session = {
			command = "${pkgs.greetd.tuigreet}/bin/tuigreet --remember --time --cmd Hyprland";
			user = "greeter";
		};
	};
}
