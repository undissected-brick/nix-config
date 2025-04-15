{ pkgs, ... }: {
	
	home.packages = with pkgs; [
		hyprsunset hyprpaper hyprlock hypridle
		hyprland-qt-support
    xdg-desktop-portal-hyprland
    polkit_gnome
    networkmanagerapplet
    xwaylandvideobridge
    brightnessctl playerctl
    grimblast jq
    wlogout
    waybar
    wl-clipboard wl-clip-persist wl-clipboard-x11
    fuzzel
    kitty
    adwaita-icon-theme
    hicolor-icon-theme
	];

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
	
	home.file = {
		".config/hypr".source = ./hypr;
		".config/waybar".source = ./waybar;
		".config/wlogout".source = ./wlogout;
		".config/fuzzel/fuzzel.ini".source = ./fuzzel.ini;
	};
}
