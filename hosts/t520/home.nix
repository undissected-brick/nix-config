{ pkgs, inputs, lib, values, ... }: {
	
	imports = [
		../../home-modules/rice
		../../home-modules/yazi
	];

	home = {
		stateVersion = values.installationVersion;
		sessionPath = [ "$HOME/.cargo/bin" ];
	};	

	nixpkgs.config.allowUnfree = true;	

	programs.home-manager.enable = true;

	home.packages = with pkgs; [
		firefox
		clang rustup
		tutanota-desktop
	];
	
	#These things exist, but won't display in menus:
	xdg.desktopEntries = lib.attrsets.genAttrs [ "nixos-manual" ] (_: { name = ""; noDisplay = true;});
}
