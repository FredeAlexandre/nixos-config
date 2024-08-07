{ config, lib, pkgs, ... }:

{
  imports = [
    <nixos-wsl/modules>
    (fetchTarball "https://github.com/nix-community/nixos-vscode-server/tarball/master")
  ];

  environment.systemPackages = [
    pkgs.wget
    pkgs.bun
    pkgs.rustup
    pkgs.sbclPackages.cl-rsvg2
    pkgs.lispPackages.cl-webkit2
  ];

  wsl.enable = true;
  wsl.defaultUser = "nixos";
  
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  services.vscode-server.enable = true;

  system.stateVersion = "24.05";
}

