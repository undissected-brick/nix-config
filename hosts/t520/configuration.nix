{ inputs, values, ... }: {
  imports = [ 
    ./hardware-configuration.nix
    ../../modules/applications/typst
    ../../modules/desktop
    ../../modules/nvf
    ../../modules/shell/zsh
    ../../modules/system
    inputs.home-manager.nixosModules.default
  ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # Allow unfree packages
  # nixpkgs.config.allowUnfree = true;

  system.stateVersion = "24.11"; # Did you read the comment?

  home-manager = {
    users.${values.mainuser} = import ./home.nix;
    extraSpecialArgs = { inherit values; };
    backupFileExtension = "backup1";
  };

}
