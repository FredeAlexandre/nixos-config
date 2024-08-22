{...}: {
  # Enable the X11 windowing system
  services.xserver = {
    enable = true;

    # Hidpi screen
    dpi = 180;

    # Xfce desktop manager
    displayManager.sddm.enable = true;
    desktopManager.plasma6.enable = true;
  };
}
