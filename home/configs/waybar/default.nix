{...}: {
  programs.waybar = {
    enable = true;
    systemd.enable = true;
    settings = {
      modules = {};
    };
    # style = '''';
  };
}
