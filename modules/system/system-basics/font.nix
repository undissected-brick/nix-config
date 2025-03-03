{ pkgs, ... }: {
  fonts = {
    packages = with pkgs; [
      fantasque-sans-mono  
    ];
    fontconfig = {
      enable = true;
      defaultFonts = {
        monospace = [ "Fantasque Sans Mono" ];  # Set as default monospace font
      };
    };
  };
}
