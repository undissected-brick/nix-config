rec {
	mainuser = "joseph";
	installationVersion = "24.11";
	system = "x86_64-linux";

	home = "/home/${mainuser}";

	flakeDir = "nix-config";
	flakePath = "${home}/${flakeDir}";

	scriptDir = ".scripts";
	scriptPath = "${home}/${scriptDir}";

	main-wallpaper = ./Pictures/Wallpapers/nixflake.png;
}
