{...}: {
  services.xserver = {
    enable = true;
    dpi = 180;
  };

  services.displayManager.sddm.enable = true;
  services.desktopManager.plasma6.enable = true;
}
