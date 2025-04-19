{ pkgs, ... }: {
	programs.nixvim = {
		enable = true;
		defaultEditor = true;
		imports = [ 
			./opts.nix 
			./plugins.nix
		];

		plugins.lsp.enable = true;
		colorschemes.gruvbox.enable = true;
	};
}

