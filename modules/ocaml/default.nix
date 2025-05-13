{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    ocaml
    opam
    gnumake
    ocamlPackages.utop
    ocamlPackages.ocamlbuild
    dune_3
  ];
}
