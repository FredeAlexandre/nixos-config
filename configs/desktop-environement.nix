{...}: {
  services.xserver = {
    enable = true;
    dpi = 180;

    desktopManager.plasma5 = {
      enable = true;
      useQtScaling = true;
    };
  };

  services.displayManager.sddm = {
    enable = true;
    enableHidpi = true;
  };

  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };
}
