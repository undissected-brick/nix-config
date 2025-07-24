{
  programs.nvf.settings.vim = {
    languages = {
      ocaml.enable = true;
    };
    formatter.conform-nvim = {
      enable = true;
      setupOpts.formatters_by_ft.ocaml = { 
				command = "ocamlformat";
				arguments = [
					"--if-then-else" "vertical"
					"--break-cases" "fit-or-vertical"
					"--type decl" "sparse"
				];
			};
    };
  };
}
