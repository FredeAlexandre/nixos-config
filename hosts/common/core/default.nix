{
  inputs,
  outputs,
  configLib,
  ...
}: {
  imports =
    (configLib.scanPaths ./.)
    ++ [inputs.home-manager.nixosModules.home-manager]
    ++ (builtins.attrValues outputs.nixosModules);

  home-manager.extraSpecialArgs = {inherit inputs outputs;};

  nixpkgs = {
    # you can add global overlays here
    overlays = builtins.attrValues outputs.overlays;
    config = {
      allowUnfree = true;
    };
  };

  hardware.enableRedistributableFirmware = true;
}
