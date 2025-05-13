{ pkgs, ...}: {
  environment.variables.EDITOR = "nvim";
  # environment.systemPackages = with pkgs.ocamlPackages; [ ocamlformat ocaml-lsp ];
  # Manual: https://notashelf.github.io/nvf/options.html
  programs.nvf = {
    enable = true;

    settings.vim = {
      options = {
        shiftwidth = 2;
      };

      viAlias = false;
      vimAlias = false;
      debugMode = {
        enable = false;
        level = 16;
        logFile = "/tmp/nvim.log";
      };

      spellcheck = {
        enable = false;
      };

      lsp = {
        # This must be enabled for the language modules to hook into
        # the LSP API.
        enable = true;

        formatOnSave = false;
        lspkind.enable = false;
        lightbulb.enable = false;
        lspsaga.enable = false;
        trouble.enable = false;
        lspSignature.enable = true; # conflicts with blink in maximal
        otter-nvim.enable = false;
        nvim-docs-view.enable = false;
      };

      debugger = {
        nvim-dap = {
          enable = true;
          ui.enable = true;
        };
      };

      # This section does not include a comprehensive list of available language modules.
      # To list all available language module options, please visit the nvf manual.
      languages = {
        enableFormat = true; #
        enableTreesitter = true;
        enableExtraDiagnostics = true;

        nix.enable = true;
        markdown.enable = true;

        bash.enable = true;
        # ocaml.enable = true;
        rust = {
          enable = true;
          crates.enable = true;
        };

        clang.enable = true;

        css.enable = false;
        html.enable = false;

        sql.enable = false;
        java.enable = false;
        kotlin.enable = false;
        ts.enable = false;
        go.enable = false;
        lua.enable = false;
        zig.enable = false;
        python.enable = false;
        typst.enable = false;

        # Language modules that are not as common.
        assembly.enable = false;
        astro.enable = false;
        nu.enable = false;
        csharp.enable = false;
        julia.enable = false;
        vala.enable = false;
        scala.enable = false;
        r.enable = false;
        gleam.enable = false;
        dart.enable = false;
        elixir.enable = false;
        haskell.enable = false;
        ruby.enable = false;
        fsharp.enable = false;

        tailwind.enable = false;
        svelte.enable = false;
      };

      visuals = {
        nvim-scrollbar.enable = false;
        nvim-web-devicons.enable = true;
        nvim-cursorline.enable = true;
        cinnamon-nvim.enable = false;
        fidget-nvim.enable = false;

        highlight-undo.enable = false;
        indent-blankline.enable = false;

        # Fun
        cellular-automaton.enable = false;
      };

      statusline = {
        lualine = {
          enable = true;
          theme = "gruvbox";
        };
      };

      theme = {
        enable = true;
        name = "gruvbox";
        style = "dark";
      };

      autopairs.nvim-autopairs.enable = false;

      # nvf provides various autocomplete options. The tried and tested nvim-cmp
      # is enabled in default package, because it does not trigger a build. We
      # enable blink-cmp in maximal because it needs to build its rust fuzzy
      # matcher library.
      autocomplete = {
        nvim-cmp.enable = true;
        blink-cmp.enable = false;
      };

      snippets.luasnip.enable = false;

      filetree = {
        neo-tree = {
          enable = false;
        };
      };

      tabline = {
        nvimBufferline.enable = false;
      };

      treesitter.context.enable = true;

      binds = {
        whichKey.enable = false;
        cheatsheet.enable = false;
        hardtime-nvim.enable = false;
      };

      telescope.enable = false;

      git = {
        enable = false;
        gitsigns.enable = false;
        gitsigns.codeActions.enable = false; # throws an annoying debug message
      };

      minimap = {
        minimap-vim.enable = false;
        codewindow.enable = false; # lighter, faster, and uses lua for configuration
      };

      dashboard = {
        dashboard-nvim.enable = false;
        alpha.enable = false;
      };

      notify = {
        nvim-notify.enable = false;
      };

      projects = {
        project-nvim.enable = false;
      };

      utility = {
        ccc.enable = false;
        vim-wakatime.enable = false;
        diffview-nvim.enable = false;
        yanky-nvim.enable = false;
        icon-picker.enable = false;
        surround.enable = false;
        leetcode-nvim.enable = false;
        multicursors.enable = false;

        motion = {
          hop.enable = false;
          leap.enable = false;
          precognition.enable = false;
        };
        images = {
          image-nvim.enable = false;
        };
      };

      notes = {
        obsidian.enable = false; # FIXME: neovim fails to build if obsidian is enabled
        neorg.enable = false;
        orgmode.enable = false;
        mind-nvim.enable = false;
        todo-comments.enable = false;
      };

      terminal = {
        toggleterm = {
          enable = false;
          lazygit.enable = false;
        };
      };

      ui = {
        borders.enable = false;
        noice.enable = false;
        colorizer.enable = false;
        modes-nvim.enable = false; # the theme looks terrible with catppuccin
        illuminate.enable = false;
        breadcrumbs = {
          enable = false;
          navbuddy.enable = false;
        };
        smartcolumn = {
          enable = false;
          setupOpts.custom_colorcolumn = {
            # this is a freeform module, it's `buftype = int;` for configuring column position
            nix = "110";
            ruby = "120";
            java = "130";
            go = ["90" "130"];
          };
        };
        fastaction.enable = false;
      };

      assistant = {
        chatgpt.enable = false;
        copilot = {
          enable = false;
          cmp.enable = false;
        };
        codecompanion-nvim.enable = false;
      };

      session = {
        nvim-session-manager.enable = false;
      };

      gestures = {
        gesture-nvim.enable = false;
      };

      comments = {
        comment-nvim.enable = false;
      };

      presence = {
        neocord.enable = false;
      };
    };
  };
}
