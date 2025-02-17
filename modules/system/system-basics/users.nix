{ pkgs, values, ... }: {

# Define a user account. Don't forget to set a password with ‘passwd’.
	users.users = {
		${values.mainuser} = {
			isNormalUser = true;
			description = values.mainuser;
			extraGroups = [ "networkmanager" "wheel" ];
			packages = with pkgs; [ ];
		};

	};
}
