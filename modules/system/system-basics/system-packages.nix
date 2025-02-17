{ pkgs, ... }: {

  # List packages installed in system profile. To search, run:
  # $ nix search wget

	environment.systemPackages = with pkgs; [
		xclip xsel

		git
	];

	programs.firefox.enable = true;
}
