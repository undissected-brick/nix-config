{ pkgs, ... }: {
  fonts = {
    packages = with pkgs; [
			nerd-fonts.fantasque-sans-mono
    ];
    fontconfig = {
      enable = true;
      defaultFonts = {
        monospace = [ "FantasqueSansMono Nerd Font" ];  # Set as default monospace font
      };
    };
  };
}
