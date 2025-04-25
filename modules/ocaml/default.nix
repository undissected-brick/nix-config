{ pkgs, ... }: {
	
	environment.systemPackages = with pkgs; [
		opam 
		gnumake
		ocamlPackages.utop
		ocamlPackages.ocamlbuild
		dune_3
	];
}
