{
  programs.nvf.settings.vim = {
    # Must be enabled for the language modules to hook into the LSP API:
    lsp.enable = true;

    languages = {
      enableFormat = false; # Seriously, does ANYONE know how to make language specific auto indentation that isn't awful
      enableTreesitter = true;
      enableExtraDiagnostics = true;

      nix.enable = true;
      markdown.enable = true;

      rust = {
        enable = true;
        crates.enable = true;
      };

      bash.enable = true;
      clang.enable = true;

      css.enable = false;
      html.enable = false;
    };
  };

  imports = [ ./ocaml.nix ];
}
