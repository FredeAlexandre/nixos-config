{
  config,
  pkgs,
  inputs,
  configLib,
  ...
}: {
  imports = [
    ./hardware-configuration.nix
    ./configs/locale.nix
    ./configs/nix.nix
    ./configs/nixpkgs.nix
    ./configs/user.nix
    ./configs/zsh.nix
  ];

  # Bootloader
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
    displayManager.lightdm.enable = true;
    desktopManager.gnome.enable = true;

    # Keybord layout
    xkb = {
      layout = "us";
      variant = "";
    };
  };

  # Display Manager session
  # services.displayManager.defaultSession = "xfce";

  # Enable touchpad support (enabled default in most desktopManager).
  services.libinput.enable = true;

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
