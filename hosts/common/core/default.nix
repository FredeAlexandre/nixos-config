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

  hardware.enableRedistributableFirmware = true;
}
