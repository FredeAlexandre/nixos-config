{
  layer = "top";
  position = "bottom";
  mod = "dock";
  height = 31;
  exclusive = true;
  passthrough = false;
  gtk-layer-shell = true;
  reload_style_on_change = true;
  modules-left = [
    "custom/padd"
    "custom/l_end"
    "custom/power"
    "custom/cliphist"
    "custom/wbar"
    "custom/theme"
    "custom/wallchange"
    "custom/r_end"
    "custom/l_end"
    "wlr/taskbar"
    "custom/spotify"
    "custom/r_end"
    ""
    "custom/padd"
  ];
  modules-center = [
    "custom/padd"
    "custom/l_end"
    "idle_inhibitor"
    "clock"
    "custom/r_end"
    "custom/padd"
  ];
  modules-right = [
    "custom/padd"
    "custom/l_end"
    "tray"
    "battery"
    "custom/r_end"
    "custom/l_end"
    "backlight"
    "network"
    "pulseaudio"
    "pulseaudio#microphone"
    "custom/notifications"
    "custom/keybindhint"
    "custom/r_end"
    "custom/padd"
  ];
}
