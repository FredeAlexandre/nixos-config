{configVars, ...}: {
  imports = [
    common/core
    common/optionals/discord.nix
    common/optionals/kitty.nix
    common/optionals/vscodium.nix
  ];
}
