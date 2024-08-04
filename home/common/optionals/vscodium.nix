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
    userSettings = {
      "extensions.autoCheckUpdates" = false;
      "update.mode" = "none";
      "git.enableSmartCommit" = true;
      "git.autofetch" = true;
    };
  };

  home.sessionVariables = {
    EDITOR = "codium";
  };
}
