{
  config,
  pkgs,
  inputs,
  configLib,
  ...
}: {
  imports = [
    ./hardware-configuration.nix

    ./configs/bootloader.nix
    ./configs/desktop-environement.nix
    ./configs/docker.nix
    ./configs/fonts.nix
    ./configs/i18n.nixsss
    ./configs/keyboard.nix
    ./configs/network.nix
    ./configs/nix.nix
    ./configs/nixpkgs.nix
    ./configs/printer.nix
    ./configs/sound.nix
    ./configs/time.nix
    ./configs/user.nix
    ./configs/zsh.nix
  ];

  # System State Version
  system.stateVersion = "24.05";
  hardware.enableRedistributableFirmware = true;
}
