# Another plagiarism of Renpenguin's stuff. This is probably how coding is supposed to be
{ pkgs, lib, config, ... }: {
	programs.kitty = {
    enable = true;
    shellIntegration.enableBashIntegration = true;
    font = {
      name = "CaskaydiaCove NF";
      package = pkgs.nerd-fonts.caskaydia-cove;
      size = 11;
    };
    settings = {
      enable_audio_bell = false;
      confirm_os_window_close = 0;

      url_color = "#0087bd";
      url_style = "straight";

      remember_window_size = false;
      initial_window_width = "100c";
      initial_window_height = "32c";
      window_padding_width = 1;

      enabled_layouts = "tall"; 
    };

    keybindings = {
      "alt+k" = "neighbouring_window up";
      "alt+j" = "neighbouring_window down";
      "alt+l" = "neighbouring_window left";
      "alt+h" = "neighbouring_window right";
      "alt+q" = "new_window";
    };

    extraConfig = ''
      mouse_map left click ungrabbed no-op
      mouse_map ctrl+left click ungrabbed mouse_handle_click selection link prompt
    '';
  };
}
