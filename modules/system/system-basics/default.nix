{ pkgs, ... }: {
	imports = [
		./locale.nix
		./network.nix
		./print.nix
		./sound.nix
		./system-packages.nix
		./upkeep.nix
		./users.nix
	];
}
