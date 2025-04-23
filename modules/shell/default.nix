{ pkgs, values, ... }: {
	imports = [
		./aliases.nix
	];

	users.defaultUserShell = pkgs.zsh;
	programs.zsh.enable = true;

	home-manager.users.${values.mainuser} = {
		programs.zsh = {
			enable = true;
			dotDir = ".config/zsh";

			enableCompletion = true;
			autosuggestion.enable = true;

			syntaxHighlighting.enable = true;

			oh-my-zsh = {
				enable = true;
				theme = "robbyrussell";
			};

		};
	};
}
