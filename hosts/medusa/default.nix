{
  config,
  lib,
  pkgs,
  configLib,
  inputs,
  ...
}: {
  imports = map configLib.relativeToRoot ["hosts/common/core"];

  programs.nix-ld = {
    enable = true;
    package = pkgs.nix-ld-rs;
  };
  # Hostname
  networking.hostName = "medusa";

  # System State Version
  system.stateVersion = "24.05";

  wsl.enable = true;
  wsl.defaultUser = "alexfrede";

  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
}
