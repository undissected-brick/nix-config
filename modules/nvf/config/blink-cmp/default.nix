{
	programs.nvf.settings.vim = {
		autocomplete = {
			blink-cmp = {
				enable = true; # Autocompletion with fuzzy-finding. So has to build fuzzy match library
				setupOpts = {
					completion = {
						menu.border = "rounded";
						documentation.window.border = "rounded";
					};
				};
			};
		};
	};
}
