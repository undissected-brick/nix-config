{
  programs.nvf.settings.vim.options = {
    # UI
    number = true; # Show line numbers
    relativenumber = true; # Overrides line numbers with |relative numbers|, except the current line
    mouse = ""; # Disables mouse

    # Indent
    shiftwidth = 2;
    tabstop = 2;
    cindent = true;
    cinkeys = "-=#";

    # Search
    hlsearch = false; # don't highlight search
    ignorecase = true; # by default, ignore case
    smartcase = true; # don't ignore case if a capital letter is entered

    # Clipboard
    clipboard = "unnamedplus"; # use system clipboard
  };
}
