{ pkgs, mainuser, ... }: {

# Define a user account. Don't forget to set a password with ‘passwd’.
	users.users = {
		${mainuser} = {
			isNormalUser = true;
			description = mainuser;
			extraGroups = [ "networkmanager" "wheel" ];
			packages = with pkgs; [
				thunderbird
			];
		};

	};
}
