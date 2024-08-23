{
  settings.main = import ./modules.nix // import ./config.nix;
  style = builtins.readFile ./style.css;
}
