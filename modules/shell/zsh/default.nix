{ config, pkgs, values, ... }: {

	imports = [
		./aliases.nix
	];

	users.defaultUserShell = pkgs.zsh;
	programs.zsh.enable = true;

	home-manager.users.${values.mainuser} = {
		programs.zsh = {
			prezto = import ./prezto;

			enable = true;
			dotDir = "${config.users.users.${values.mainuser}.home}/.config/zsh";

			enableCompletion = true;
			autosuggestion.enable = true;

			syntaxHighlighting.enable = true;
		
		};
	};
}
