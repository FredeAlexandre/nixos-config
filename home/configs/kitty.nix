{...}: {
  programs.kitty = {
    enable = true;
    font.name = "FiraCode Nerd Font";
    shellIntegration.enableZshIntegration = true;
    # theme = "";
    settings = {
      confirm_os_window_close = -1;
    };
  };

  home.sessionVariables = {
    TERM = "kitty";
    TERMINAL = "kitty";
  };
}
