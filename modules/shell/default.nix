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
		
			/*
			home.file.".config/zprezto/.zprestorc" = {
				source = "${pkgs.prezto}/share/presets";
			};

			home.file.".config/zprezto/modules/prompt/functions/prompt_modimal_setup" = {
				source = ./prompt_modimal_setup;
			};

			extraConfig = ''
				export ZPREZTODIR="$HOME/.config/zsh/zprezto"
				source "$ZPREZTODIR/init.zsh"
			'';
			*/

			prezto = {
				enable = true;
				editor.keymap = "vi";
				caseSensitive = false;
				prompt.theme = "minimal";
			};
		};
	};
}
