{configVars, ...}: {
  imports = [
    ./common/discord.nix
    ./common/git.nix
    ./common/kitty.nix
    ./common/nix.nix
    ./common/nixpkgs.nix
    ./common/shell.nix
    ./common/vscodium.nix
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
