{...}: {
  programs.waybar = {
    enable = true;
    systemd.enable = true;
    settings = {
      modules = import ./modules.nix;
    };
    # style = '''';
  };
}
