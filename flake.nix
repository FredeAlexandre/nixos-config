{
  description = "A simple nixos configuration";

  inputs = {
    nixpkgs.url = "https://flakehub.com/f/NixOS/nixpkgs/0.2405.*.tar.gz";
    nixpkgs-unstable.url = "https://flakehub.com/f/NixOS/nixpkgs/0.1.*.tar.gz";

    home-manager.url = "https://flakehub.com/f/nix-community/home-manager/0.2405.*.tar.gz";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    alejandra.url = "https://flakehub.com/f/kamadorueda/alejandra/3.*.tar.gz";
    alejandra.inputs.nixpkgs.follows = "nixpkgs";

    sops-nix.url = "https://flakehub.com/f/Mic92/sops-nix/0.1.*.tar.gz";
    sops-nix.inputs.nixpkgs-stable.follows = "nixpkgs";
    sops-nix.inputs.nixpkgs.follows = "nixpkgs-unstable";
  };

  outputs = {
    self,
    nixpkgs,
    home-manager,
    ...
  } @ inputs: let
    inherit (self) outputs;
    inherit (nixpkgs) lib;
    configVars = import ./vars {inherit inputs lib;};
    configLib = import ./lib {inherit lib;};
    specialArgs = {inherit inputs outputs configVars configLib nixpkgs;};
  in {
    # Custom modules to enable special functionality for nixos or home-manager oriented configs.
    nixosModules = import ./modules/nixos;
    homeManagerModules = import ./modules/home-manager;

    # Custom modifications/overrides to upstream packages.
    overlays = import ./overlays {inherit inputs outputs lib;};

    nixosConfigurations = {
      nyx = lib.nixosSystem {
        inherit specialArgs;
        modules = [
          home-manager.nixosModules.home-manager
          {
            home-manager.extraSpecialArgs = specialArgs;
          }
          ./hosts/nyx
        ];
      };
    };
  };
}
