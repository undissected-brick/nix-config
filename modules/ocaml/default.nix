{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    ocaml
    dune_3
  ] ++
  (with pkgs.ocamlPackages; [
    utop
    ocamlbuild
    ocamlformat
  ]);
}
