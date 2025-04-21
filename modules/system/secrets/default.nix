{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [ 
		pass-secret-service 
		gnupg seahorse # GPG's CLI input always fails for me, so I need seahorse to generate a key
		pass
		libsecret
	];

  services.dbus.packages = [ pkgs.pass-secret-service ];

  systemd.user.services.pass-secret-service = {
    enable = true;
    serviceConfig = {
      ExecStart = "${pkgs.pass-secret-service}/bin/pass_secret_service";
      Restart = "always";
			Environment = "DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/%U/bus";
    };
    wantedBy = [ "default.target" ];
  };

  # Needed for D-Bus activation
  environment.sessionVariables = {
    XDG_DATA_DIRS = [
      "${pkgs.gsettings-desktop-schemas}/share/gsettings-schemas/${pkgs.gsettings-desktop-schemas.name}"
    ];
		ELECTRON_EXTRA_LAUNCH_ARGS = "--enable-features=UseOzonePlatform --ozone-platform=wayland --enable-secret-service";
		NIXOS_OZONE_WL = "1";  # Critical for Wayland
  };
}
