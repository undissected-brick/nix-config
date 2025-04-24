{ values, ... }: {
	environment.shellAliases = {
		y = "~/.scripts/yazi/yazi-open.sh";
		gocaml = "eval $(opam env)";
	};
}
