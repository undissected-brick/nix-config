{ pkgs, ... }: {
	programs.nixvim = {
		enable = true;
		defaultEditor = true;
		extraConfigLua = ''
		vim.o.tabstop = 2
		vim.o.shiftwidth = 2
		vim.o.clipboard = "unnamedplus"
		vim.o.number = true
		'';
		plugins.lsp = {
      enable = true;
      servers.rust-analyzer = {
        enable = true;
    	};
    };
		colorschemes.gruvbox.enable = true;
		plugins = {
			lualine.enable = true;
		};
	};
}

