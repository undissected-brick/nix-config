{ pkgs, ... }: {

  # List packages installed in system profile. To search, run:
  # $ nix search wget

	environment.systemPackages = with pkgs; [
		neovim
		xclip xsel

		git
	];

	programs.firefox.enable = true;
}
