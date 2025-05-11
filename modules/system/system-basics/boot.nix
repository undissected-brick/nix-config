{
	boot = {
		loader.systemd-boot.enable = true;
		loader.efi.canTouchEfiVariables = true;
		kernelParams = [ "console=tty2" ]; # Print startup messages to tty2
	};
}
