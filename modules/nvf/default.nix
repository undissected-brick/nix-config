{
  environment.variables.EDITOR = "nvim";
  # Manual: https://notashelf.github.io/nvf/options.html

  imports = [
		./config/blink-cmp
    ./config/languages
    ./config/options.nix
    ./config/style.nix
  ];

  programs.nvf = {
    enable = true;

    settings.vim = {
      extraLuaFiles = [ 
        ./lua/diagnose.lua
      ];

      debugger = {
        nvim-dap = {
          enable = true;
          ui.enable = true;
        };
      };

      visuals = {
        nvim-web-devicons.enable = true;
        nvim-cursorline.enable = true;
      };


      treesitter.context.enable = true;

      binds = {
        whichKey.enable = false;
        cheatsheet.enable = false;
        hardtime-nvim.enable = false;
      };
    };
  };
}
