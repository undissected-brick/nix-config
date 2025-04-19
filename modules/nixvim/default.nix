{ pkgs, ... }: {
	programs.nixvim = {
		enable = true;
		defaultEditor = true;
		imports = [ 
			./globals.nix
			./opts.nix 
			./plugins.nix
		];

		plugins.lsp.enable = true;
		colorschemes.gruvbox.enable = true;
	};
}

