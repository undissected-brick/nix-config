{pkgs, ...}: {
  plugins = {
    lsp-lines = {
      enable = true;
    }; # I kinda like being able to read error messages

    lsp-format = {
      enable = true;
    };

    lsp = {
      enable = true;
      inlayHints = true;

      servers = {
        ocamllsp.enable = true;
      };
    };
  };

  extraPackages = with pkgs.ocamlPackages; [ocaml-lsp ocamlformat];
}
