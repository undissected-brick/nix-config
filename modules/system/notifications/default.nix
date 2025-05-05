{ pkgs, values, ... }: {
	environment.systemPackages = with pkgs; [ libnotify ];

	home-manager.users.${values.mainuser}.services.dunst = {
		enable = true;
		settings = import ./dunst-settings.nix { inherit pkgs; };
	};
}
