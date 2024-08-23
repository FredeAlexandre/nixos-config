{...}: {
  programs.waybar =
    {
      enable = true;
      systemd.enable = true;
    }
    // import ./themes/starter;
}
