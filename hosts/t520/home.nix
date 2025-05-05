{ pkgs, inputs, lib, values, ... }: {
	
	imports = [
		../../home-modules/home-packages
		../../home-modules/kitty
		../../home-modules/windows-and-tiles
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
		vscode
	];
	
	#These things exist, but won't display in menus:
	xdg.desktopEntries = lib.attrsets.genAttrs [ "nixos-manual" ] (_: { name = ""; noDisplay = true;});
}
