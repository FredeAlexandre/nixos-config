{
  settings =
    {
      modules = import ./modules.nix;
    }
    // import ./config.nix;
  style = ./style.nix;
}
