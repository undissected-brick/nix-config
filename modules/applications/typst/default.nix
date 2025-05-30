{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    typst # Compiles .typ documents into pdfs
    # typst-live # Hosts an auto-refreshing web server showing said pdf; disabled as I am using typst-preview.nvim
    tdf # TUI pdf viewer
  ];
}
