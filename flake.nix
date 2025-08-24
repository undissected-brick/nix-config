{
  description = "Nixos config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nvf = {
      url = "github:NotAShelf/nvf";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, ... }@inputs:
    let
      values = import ./values.nix;
      mkSystem = system: location: nixpkgs.lib.nixosSystem {
				inherit system;
        modules = [
          ./hosts/${location}/configuration.nix
          inputs.home-manager.nixosModules.default
          inputs.nvf.nixosModules.default
        ];
        specialArgs = { inherit inputs values; };
      };

    in {
      nixosConfigurations = {
        t520 = mkSystem "x86_64-linux" "t520"; 
      };

    };
}
