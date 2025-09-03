{ pkgs, ... }: {
	environment.systemPackages = with pkgs; [ opam gcc pkg-config ];
}
