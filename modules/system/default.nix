{ pkgs, mainuser, ... }: {
	imports = [
		./system-basics
		./battery-alert
	];
}
