{ pkgs, values, ... }: { 
	wayland.windowManager.hyprland.enable = true;
	wayland.windowManager.hyprland.settings = {
		"$terminal" = "kitty";
		"$mod" = "SUPER";

		binds = [
			"$mod, Q, exec, terminal"
			"$mod, F, exec, firefox"

			", Print, exec, grimblast copysave area"

			"$mod, f, exec, fullscreen"
			"$mod, H, movewindow, l"
			"$mod, J, movewindow, d"
			"$mod, K, movewindow, u"
			"$mod, L, movewindow, r"
			"$mod, h, movefocus, l"
			"$mod, j, movefocus, d"
			"$mod, k, movefocus, u"
			"$mod, l, movefocus, r"
		];

		exec-once = [ 
			"waybar" 
			"dunst" 
			"${pkgs.polkit_gnome}/libexec/polkit-gnome-authentication-agent-1" 
			"wl-clip-persist --clipboard regular" # Regular clipboard retains data after the application that it was copied from is closed
			"nm-applet --indicator" # Provides network status icon (I think)
			"hypridle"
			"$terminal"
			"kitty swaybg -i ${values.main-wallpaper}"
		];

		"input.kb_layout" = "gb";

		dwindle = {
			pseudotile = true;
			preserve_split = true;
		};

		misc = {
			force_default_wallpaper = 0;
			disable_splash_rendering = false;
			middle_click_paste = false;
			enable_swallow = true;
		};

		ecosystem = {
			no_update_news = true;
			no_donation_nag = true;
		};
		"debug.disable_logs" = false;
	};
}

