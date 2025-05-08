{ pkgs, ... }: {
	home.packages = with pkgs; [
		syncthing
		obsidian
		thunderbird
		ddgr links2
	];
}
