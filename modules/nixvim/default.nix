{ pkgs, ... }: {
	programs.nixvim = {
		enable = true;
		defaultEditor = true;
		imports = [ 
			./luacode.nix 
			./plugins.nix
		];

		plugins.lsp.enable = true;
		colorschemes.gruvbox.enable = true;
	};
}

