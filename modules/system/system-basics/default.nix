{ pkgs, ... }: {
	imports = [
		./font.nix
		./greet.nix
		./locale.nix
		./maintenance.nix
		./network.nix
		./print.nix
		./sound.nix
		./system-packages.nix
		./users.nix
	];
}
