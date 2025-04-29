{ pkgs, ... }: {
	programs.nixvim = {
		enable = true;
		defaultEditor = true;
		imports = [ 
			./globals.nix
			./opts.nix 
			./plugins.nix
			./plugins/cmp.nix
			./plugins/lsp.nix
			./plugins/mini.nix
			./plugins/treesitter.nix
		];

		plugins.lsp.enable = true;
		colorschemes.gruvbox.enable = true;
	};
}

