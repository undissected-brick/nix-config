{ config, inputs, pkgs, values, ... }: {
	imports = [ 
		./hardware-configuration.nix
		../../modules/desktop
		../../modules/nixvim
		../../modules/ocaml
		../../modules/shell
		../../modules/system
		inputs.home-manager.nixosModules.default
	];

  # Bootloader.
  boot = {
		loader.systemd-boot.enable = true;
		loader.efi.canTouchEfiVariables = true;
		kernelParams = [ "console=tty2" ]; # Print startup messages to tty2
	};

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

	/*
  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Enable the GNOME Desktop Environment.
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "gb";
    variant = "";
  };
	*/

  # Allow unfree packages
  # nixpkgs.config.allowUnfree = true;

  system.stateVersion = "24.11"; # Did you read the comment?

	home-manager = {
		users.${values.mainuser} = import ./home.nix;
		extraSpecialArgs = { inherit values; };
		backupFileExtension = "backup1";
	};

}
