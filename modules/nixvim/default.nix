{ pkgs, ... }: {
	programs.nixvim = {
		enable = true;
		defaultEditor = true;
		imports = [ ./luacode.nix ];

		plugins.lsp = {
      enable = true;
      servers.rust-analyzer = {
        enable = true;
    	};
    };
		colorschemes.gruvbox.enable = true;
		plugins = {
			lualine.enable = true;
			telescope.enable = true;
			treesitter.enable = true;
		};
	};
}

