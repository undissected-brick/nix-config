{ pkgs, ... }: {
  plugins = {
    lualine.enable = true;
    telescope.enable = true;
    
		lsp-format.enable = true;

    dap-lldb.enable = true;
    rustaceanvim.enable = true;
	};
 }
