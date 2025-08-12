{
  programs.nvf.settings.vim = {
    # Must be enabled for the language modules to hook into the LSP API:
    lsp.enable = true;

    languages = {
      enableFormat = false;
      enableTreesitter = true;
      enableExtraDiagnostics = true;

      nix.enable = true;
      markdown.enable = true;

      rust = {
        enable = true;
        crates.enable = true;
      };

			python.enable = true;

      bash.enable = true;
      clang.enable = true;

      css.enable = true;
      html.enable = true;

      typst.enable = true;
    };
  };

  imports = [ ./ocaml.nix ];
}
