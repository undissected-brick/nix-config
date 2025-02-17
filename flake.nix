{
  description = "Nixos config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, ... }@inputs:
  let
    mkSystem = system: location: nixpkgs.lib.nixosSystem {
      system = system;
      modules = [
        ./hosts/${location}/configuration.nix
        inputs.home-manager.nixosModules.default
      ];
      specialArgs = {inherit inputs; imports = [ values.nix ];};
    };

  in {
    nixosConfigurations = {
			t520 = mkSystem "x86_64-linux" "t520"; 
    };
  };
}
