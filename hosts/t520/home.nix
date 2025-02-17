{ pkgs, inputs, lib, values, ... }: {
	
	home = {
		stateVersion = values.installedVersion;
		sessionPath = [ "$HOME/.cargo/bin" ];
	};
	nixpkgs.config.allowUnfree = true;

	programs.home-manager.enable = true;

	home.packages = with pkgs; [
		firefox

		clang rustup

		thunderbird
	];
	
	#These things exist, but won't display in menus:
	xdg.desktopEntries = lib.attrset.genAttrs [ "nixos-manual" ] (_: { name = ""; noDisplay = true;});
}
