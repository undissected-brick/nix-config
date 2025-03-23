{ pkgs, ... }: {

  # List packages installed in system profile. To search, run:
  # $ nix search wget

	environment.systemPackages = with pkgs; [
		xclip xsel
		gnupg gpg-tui
		seahorse gnome-keyring # GNOME Password manager that provides an org.freedesktop.secrets interface
		git
		yazi
	];

	programs.firefox.enable = true;
}
