{pkgs, ...}: {
  home.packages = with pkgs; [
    kitty
  ];

  home.sessionVariables = {
    TERM = "kitty";
    TERMINAL = "kitty";
  };
}
