{
	boot = {
		loader.systemd-boot.enable = true;
		loader.efi.canTouchEfiVariables = true;
		kernelParams = [ 
			"console=tty2" # Print startup messages to tty2
			"loglevel=4" # My actual goal is to stop anything writing to tuigreet's login field
		];
	};
}
