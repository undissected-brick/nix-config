{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    ocaml
    ocamlPackages.utop
    ocamlPackages.ocamlbuild
    dune_3
  ];
}
