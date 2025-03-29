{
	home.packages = with pkgs; [ libnotify ];

	services.dunst = {
		enable = true;
		settings = { imports = [ ./dunst-settings.nix]; };
	};
}
