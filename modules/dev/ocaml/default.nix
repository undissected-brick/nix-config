{ pkgs, ... }: {
	environment.systemPackages = with pkgs; [ opam gcc gmp pkg-config ];
}
