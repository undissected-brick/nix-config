{ pkgs, ... }: {
  fonts = {
    packages = with pkgs; [
			nerd-fonts.caskaydia-cove
    ];
    fontconfig = {
      enable = true;
      defaultFonts = {
        monospace = [ "CaskaydiaCove Nerd Font" ];  # Set as default monospace font
      };
    };
  };
}
