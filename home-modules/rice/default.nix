{ pkgs, ... }: {
	imports = [
	 ../kitty
	];

	home.packages = with pkgs; [
		hyprpaper hyprlock hypridle
    xdg-desktop-portal-hyprland
    polkit_gnome
    networkmanagerapplet
    xwaylandvideobridge
    brightnessctl playerctl
    grimblast jq
    wlogout
    dunst libnotify
    waybar
    wl-clipboard wl-clip-persist wl-clipboard-x11
    fuzzel
    kitty
    adwaita-icon-theme
    hicolor-icon-theme
	];
	
	#home.file = { ".config/waybar".source = ./waybar; };

	# GTK is a cross platform toolkit for creating GUI applications

	gtk = {
    enable = true;

    theme.name = "Adwaita-dark";
    gtk3.extraConfig.gtk-application-prefer-dark-theme = 1;
		gtk4.extraConfig.gtk-application-prefer-dark-theme = 1;


    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.papirus-icon-theme;
    };

    font = {
      name = "Cantarell";
      size = 11;
    };
	};

  # Cursor
  home.pointerCursor = {
    gtk.enable = true;
    x11.enable = true;
    package = pkgs.catppuccin-cursors.macchiatoDark;
    name = "catppuccin-macchiato-dark-cursors";
    size = 24;
  };
}
