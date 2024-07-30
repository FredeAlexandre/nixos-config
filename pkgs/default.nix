# You can build these directly using 'nix build .#example'
{pkgs ? import <nixpkgs> {}}: rec {
  #################### Packages with external source ####################

  bluetui = pkgs.callPackage ./bluetui.nix {};
}
