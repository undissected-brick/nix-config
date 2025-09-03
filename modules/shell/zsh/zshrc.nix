{
	programs.zsh.shellInit = ''
		eval "$(direnv shell zsh)"
		[[ ! -r '/home/joseph/.opam/opam-init/init.zsh' ]] || source '/home/joseph/.opam/opam-init/init.zsh' > /dev/null 2> /dev/null
	'';
}
