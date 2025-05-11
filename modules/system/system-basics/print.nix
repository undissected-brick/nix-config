{ lib, pkgs, ... }: {
	
	nixpkgs.config.allowUnfreePredicate = pkg:
		builtins.elem (lib.getName pkg) [ "epson_201207w" ];
	

	# Enable printing with CUPS:
	services.printing = {
		enable = true;
		
		drivers = [ 
			pkgs.epson_201207w 
		];
	};
}
