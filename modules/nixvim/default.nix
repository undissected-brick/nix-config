{ pkgs, ... }: {
	programs.nixvim = {
		enable = true;
		defaultEditor = true;
		viAlias = true;
		vimAlias = true;
		extraConfigLua = ''
		vim.o.tabstop = 2
		vim.o.shiftwidth = 2
		vim.o.clipboard = "unnamedplus"
		vim.o.number = true
		'';
		colorschemes.gruvbox.enable = true;
		plugins = {
			lualine.enable = true;
		};
	};
}

