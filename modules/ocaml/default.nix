{ pkgs, ... }: {
	
	environment.systemPackages = with pkgs; [
		opam 
		gnumake
	];
}
