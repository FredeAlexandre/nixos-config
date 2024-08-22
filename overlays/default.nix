{
  inputs,
  lib,
  ...
}: {
  custom-packages = final: _prev: import ../pkgs {pkgs = final;};

  unstable-packages = final: _prev: {
    unstable = import inputs.nixpkgs-unstable {
      system = final.system;
      config.allowUnfreePredicate = pkg:
        builtins.elem (lib.getName pkg) [
        ];
    };
  };
}
