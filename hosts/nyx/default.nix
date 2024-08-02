# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).
{
  config,
  pkgs,
  inputs,
  configLib,
  ...
}: {
  imports =
    [
      # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ]
    ++ (map configLib.relativeToRoot [
      "hosts/common/core"
      "hosts/common/users/alexfrede"
    ]);

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Hostname
  networking.hostName = "nyx";

  # Enable networking
  networking.networkmanager.enable = true;

  # Enable the X11 windowing system
  services.xserver = {
    enable = true;

    # Hidpi screen
    dpi = 180;

    # Xfce desktop manager
    desktopManager = {
      xterm.enable = false;
      xfce.enable = true;
    };

    # Keybord layout
    xkb = {
      layout = "us";
      variant = "";
    };

    # Enable touchpad support (enabled default in most desktopManager).
    libinput.enable = true;
  };

  # Display Manager session
  services.displayManager.defaultSession = "xfce";

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

  # Install firefox.
  programs.firefox.enable = true;

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # System wide packages
  environment.systemPackages = with pkgs; [
    just
    vscode
    neofetch
    lazygit
    kitty
    inputs.alejandra.defaultPackage."x86_64-linux"
  ];

  # Fonts
  fonts = {
    packages = with pkgs; [
      (nerdfonts.override {fonts = ["FiraCode"];})
    ];
  };

  # System State Version
  system.stateVersion = "24.05";
}
