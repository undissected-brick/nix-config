{
  description = "Nixos config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

		nixvim = {
			url = "github:nix-community/nixvim";
			inputs.nixpkgs.follows = "nixpkgs";
		};
  };

  outputs = { self, nixpkgs, ... }@inputs:
  let
		values = import ./values.nix;
    mkSystem = system: location: nixpkgs.lib.nixosSystem {
      system = system;
      modules = [
        ./hosts/${location}/configuration.nix
        inputs.home-manager.nixosModules.default
				inputs.nixvim.nixosModules.nixvim
      ];
      specialArgs = {inherit inputs values;};
    };

  in {
    nixosConfigurations = {
			t520 = mkSystem "x86_64-linux" "t520"; 
    };
  };
}
