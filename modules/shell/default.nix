{ pkgs, ... }: {
	imports = [
		./aliases.nix
	];

	users.defaultUserShell = pkgs.zsh;
	environment.shells = [ pkgs.zsh ];

	programs.zsh = {
		enable = true;
		syntaxHighlighting.enable = true;

		enableCompletion = true;
		autosuggestions.enable = true;

		ohMyZsh = {
			enable = true;
		};

	};
}
