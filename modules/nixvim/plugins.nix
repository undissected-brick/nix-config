{
	plugins = {
		lualine.enable = true;
		telescope.enable = true; # Fuzzy finder
			mini = {
				enable = true;
				mockDevIcons = true;
				modules.icons = { style = "glyph"; };
			}; #Icons
		treesitter.enable = true; # Syntax highlighting support. Maybe some other stuff
		dap-lldb.enable = true; # Debugging
		cmp = {
      enable = true;
      autoEnableSources = true;
      settings = {
				completion = { autocomplete = false; };
        sources = [
          { name = "nvim_lsp"; }
          { name = "path"; }
          { name = "buffer"; }
        ];
        mapping = {
          "<C-Space>" = "cmp.mapping.complete()";
          "<Tab>" = "cmp.mapping.select_next_item()";
          "<S-Tab>" = "cmp.mapping.select_prev_item()";
          "<CR>" = "cmp.mapping.confirm({ select = true })";
					"<C-e>" = "cmp.mapping.abort()";
        };
      };
    }; # Autocompletion
		rustaceanvim.enable = true; # Also autocompletion?
	};
}
