{pkgs, ...}: {
  home.packages = with pkgs; [
    vscodium
  ];

  home.sessionVariables = {
    EDITOR = "codium";
  };
}
