{pkgs, ...}: {
  programs.git = {
    enable = true;
    userEmail = "alexandre.frede.pro@gmail.com";
    userName = "Alexandre Frede";
  };

  home.packages = with pkgs; [
    lazygit # TUI git client
    pre-commit # git hooks
  ];
}
