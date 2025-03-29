{ pkgs, ... }: {

  # List packages installed in system profile. To search, run:
  # $ nix search wget

	environment.systemPackages = with pkgs; [
		xclip xsel
		gnupg gpg-tui
		git
		yazi
	];

	programs.firefox.enable = true;
}
