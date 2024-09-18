{pkgs, ...}: {
  programs.git = {
    enable = true;
    userEmail = "alexandre.frede.pro@gmail.com";
    userName = "Alexandre Frede";
    extraConfig = {
      safe.directory = "/home/alexfrede/Configuration/.git";
      init.defaultBranch = "main";
    };
  };

  home.packages = with pkgs; [
    lazygit # TUI git client
    pre-commit # git hooks
  ];
}
