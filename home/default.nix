{...}: {
  imports = [
    ./configs/discord.nix
    ./configs/git.nix
    ./configs/hyprland.nix
    ./configs/kitty.nix
    ./configs/nix.nix
    ./configs/nixpkgs.nix
    ./configs/shell.nix
    ./configs/vscodium.nix
    ./configs/wofi.nix
  ];

  services.ssh-agent.enable = true;

  home = {
    username = "alexfrede";
    homeDirectory = "/home/alexfrede";
    stateVersion = "24.05";
    sessionPath = [];
    sessionVariables = {
      FLAKE = "$HOME/Configuration";
    };
  };

  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";
}
