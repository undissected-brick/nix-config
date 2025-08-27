{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    ocaml
    dune_3
		clang
  ] ++
  (with pkgs.ocamlPackages; [
    utop
    ocamlbuild
    ocamlformat
  ]);

	environment.variables = {
		CC = "clang";
	};
}
