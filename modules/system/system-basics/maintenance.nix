{
	nix.optimise = {
		automatic = true;
		dates = [ "03:45" ];
	};

	nix.gc = {
		automatic = true;
		dates = "03:40";
		options = "--delete-older-than 14d";
	};
}
