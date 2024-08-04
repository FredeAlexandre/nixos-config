{
  config,
  lib,
  pkgs,
  outputs,
  configLib,
  ...
}: {
  imports =
    (configLib.scanPaths ./.)
    ++ (builtins.attrValues outputs.homeManagerModules);

  services.ssh-agent.enable = true;

  home = {
    username = "alexfrede";
    homeDirectory = "/home/alexfrede";
    stateVersion = "24.05";
    sessionPath = [
      # "$HOME/.local/bin"
      # "$HOME/scripts/talon_scripts"
    ];
    sessionVariables = {
      FLAKE = "$HOME/Configuration";
      SHELL = "zsh";
      TERM = "kitty";
      TERMINAL = "kitty";
      # EDITOR = "nvim";
      # MANPAGER = "batman"; # see ./cli/bat.nix
    };
  };

  home.packages = with pkgs; [
    borgbackup # backups
    btop # resource monitor
    coreutils # basic gnu utils
    curl
    eza # ls replacement
    fd # tree style ls
    findutils # find
    fzf # fuzzy search
    jq # JSON pretty printer and manipulator
    nix-tree # nix package tree viewer
    ncdu # TUI disk usage
    pciutils
    pfetch # system info
    pre-commit # git hooks
    p7zip # compression & encryption
    ripgrep # better grep
    usbutils
    tree # cli dir tree viewer
    unzip # zip extraction
    unrar # rar extraction
    wget # downloader
    zip # zip compression
    discord
  ];

  nix = {
    package = lib.mkDefault pkgs.nix;
    settings = {
      experimental-features = ["nix-command" "flakes" "repl-flake"];
      warn-dirty = false;
    };
  };

  programs = {
    home-manager.enable = true;
    git = {
      enable = true;
      userEmail = "alexandre.frede.pro@gmail.com  ";
      userName = "Alexandre Frede";
    };
    zsh = {
      enable = true;
      enableCompletion = true;
      autosuggestion.enable = true;
      syntaxHighlighting.enable = true;

      shellAliases = {
        cd = "z";
        ls = "eza --icons";
        ll = "ls -l";
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

  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";
}
