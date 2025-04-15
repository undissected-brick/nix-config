{ pkgs, mainuser, ... }: {
	imports = [
		./battery-alert
		./secrets
		./system-basics
	];
}
