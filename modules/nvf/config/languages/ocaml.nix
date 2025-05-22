{
  programs.nvf.settings.vim = {
    languages = {
      ocaml.enable = true;
    };
    formatter.conform-nvim = {
      enable = true;
      setupOpts.formatters_by_ft.ocaml = "ocamlformat";
    };
  };
}
