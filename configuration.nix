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
    ./configs/keyboard.nix
    ./configs/locale.nix
    ./configs/networking.nix
    ./configs/nix.nix
    ./configs/nixpkgs.nix
    ./configs/user.nix
    ./configs/zsh.nix
  ];
  # Bluetooth
  hardware.bluetooth.enable = true;
  hardware.bluetooth.powerOnBoot = true;

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Enable sound with pipewire.
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  # Install firefox
  programs.firefox.enable = true;

  # Fonts
  fonts = {
    packages = with pkgs; [
      (nerdfonts.override {fonts = ["FiraCode"];})
    ];
  };

  # System State Version
  system.stateVersion = "24.05";

  hardware.enableRedistributableFirmware = true;
}
