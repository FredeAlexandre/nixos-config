{...}: {
  services.xserver = {
    enable = true;
    dpi = 180;
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
