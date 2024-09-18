{
  pkgs,
  inputs,
  ...
}: {
  programs = {
    zsh = {
      enable = true;
      enableCompletion = true;
      autosuggestion.enable = true;
      syntaxHighlighting.enable = true;

      shellAliases = {
        cd = "z";
        cat = "bat -p";
        ls = "eza --icons";
        ll = "ls -l";
        code = "codium";
        update = "just --justfile ~/Configuration/justfile rebuild";
      };
    };
    oh-my-posh = {
      enable = true;
      enableZshIntegration = true;
      useTheme = "gruvbox";
    };
    zoxide = {
      enable = true;
      enableZshIntegration = true;
    };
  };

  home.packages = with pkgs; [
    btop # resource monitor
    coreutils # basic gnu utils
    curl # http client from terminal
    eza # ls replacement
    fd # tree style ls
    findutils # find
    fzf # fuzzy search
    jq # JSON pretty printer and manipulator
    nix-tree # nix package tree viewer
    ncdu # TUI disk usage
    pciutils
    pfetch # system info
    p7zip # compression & encryption
    ripgrep # better grep
    usbutils # utils for usb devices
    tree # cli dir tree viewer
    unzip # zip extraction
    unrar # rar extraction
    wget # downloader
    zip # zip compression
    just # command runner
    neofetch # Show information of host
    bat # Show files better than cat
    killall
    zen-browser
    alejandra # Formatter for nix
  ];

  home.sessionVariables = {
    SHELL = "zsh";
  };
}
