{pkgs, ...}: {
  programs.vscode = {
    enable = true;
    package = pkgs.vscodium;
    enableExtensionUpdateCheck = false;
    enableUpdateCheck = false;
    extensions = with pkgs.vscode-extensions; [
      arrterian.nix-env-selector
      jnoortheen.nix-ide
    ];
  };

  home.sessionVariables = {
    EDITOR = "codium";
  };
}
