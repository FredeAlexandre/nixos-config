{configVars, ...}: {
  imports = [
    ./discord.nix
    ./git.nix
    ./kitty.nix
    ./nix.nix
    ./nixpkgs.nix
    ./shell.nix
    ./vscodium.nix
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
