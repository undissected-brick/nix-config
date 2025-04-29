{ pkgs, ... }: {

	plugins.treesitter = {
		enable = true;
		grammarPackages = with pkgs.tree-sitter-grammars; [
			tree-sitter-bash
			tree-sitter-ocaml
			tree-sitter-rust
			tree-sitter-toml
		]; 
	};
}
