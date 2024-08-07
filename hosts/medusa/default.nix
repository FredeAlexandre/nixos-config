{ config, lib, pkgs, configLib, ... }:

{
  imports = (map configLib.relativeToRoot [ "hosts/common/core" ]);

  programs.nix-ld = {
    enable = true;
    package = pkgs.nix-ld-rs;
};
  # Hostname
  networking.hostName = "medusa";

  # System wide packages
  environment.systemPackages = with pkgs; [
    inputs.alejandra.defaultPackage."x86_64-linux"
    wget
    bun
    rustup
    git
    just
  ];

  # Fonts
  fonts = {
    packages = with pkgs; [
      (nerdfonts.override {fonts = ["FiraCode"];})
    ];
  };

  # System State Version
  system.stateVersion = "24.05";

  wsl.enable = true;
  wsl.defaultUser = "nixos";

  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
}
