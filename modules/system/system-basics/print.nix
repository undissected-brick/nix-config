{ lib, pkgs, ... }: {
	
	# note that the driver is unfree - allowUnfreePredicate (in configuration.nix) includes it

	# Enable printing with CUPS:
	services.printing = {
		enable = true;
		
		drivers = [ 
			pkgs.epson_201207w 
		];
	};
}
