# Plagiarised from: github.com/renpenguin/dots

{ pkgs, ... }: 
let 
  yazi-plugins = pkgs.fetchFromGitHub {
		owner = "yazi-rs";
		repo = "plugins";
		rev = "864a0210d9ba1e8eb925160c2e2a25342031d8d3";
		hash = "sha256-m3709h7/AHJAtoJ3ebDA40c77D+5dCycpecprjVqj/k=";
	};
in {
  programs.yazi = {
    enable = true;
    enableZshIntegration = true;
    shellWrapperName = "y";

    settings = {
      opener.play = [
        { run = ''${./scripts/viv.sh} "$@"''; orphan = true; for = "unix"; }
      ];
    };

    plugins = {
      chmod = "${yazi-plugins}/chmod.yazi";
      full-border = "${yazi-plugins}/full-border.yazi";
			mount = "${yazi-plugins}/mount.yazi";
			starship = pkgs.fetchFromGitHub {
				owner = "Rolv-Apneseth";
				repo = "starship.yazi";
				rev = "6fde3b2d9dc9a12c14588eb85cf4964e619842e6";
				sha256 = "sha256-XiEsykudwYmwSNDO41b5layP1DqVa89e6Emv9Qf0mz0=";
			};
    };

    initLua = ''
			require("full-border"):setup()
      require("starship"):setup()
		'';

    keymap = {
      mgr.prepend_keymap = [
        {
          on  = "y";
          run = [ ''shell -- for path in "$@"; do echo "file://$path"; done | wl-copy -t text/uri-list'' "yank" ];
          desc = "Copy file to Wayland clipboard";
        }
        {
          on = "M";
          run = "plugin mount";
          desc = "View drive mounting options";
        }
        {
          on = "T";
					run = "plugin max-preview";
					desc = "Maximize or restore the preview pane";
				}
				{
          on = ["c" "m"];
					run = "plugin chmod";
					desc = "Chmod on selected files";
				}
      ];
    };
  };

  home.packages = with pkgs; [ 
    imv ffmpeg p7zip 
    starship
  ];

	home.file.".scripts/yazi".source = ./scripts;
}
