{
  pkgs,
  inputs,
  config,
  lib,
  configVars,
  configLib,
  ...
}: let
  ifTheyExist = groups: builtins.filter (group: builtins.hasAttr group config.users.groups) groups;
  hashedPassword = "$y$j9T$ONXJTfx3zLLyZ1qeOJgrV0$/mMGpP0hivxFayNMO7Lbwd0tKiwzPS.w53wOEyVDPG/";
  username = "alexfrede";
in {
  users.mutableUsers = false;
  users.users.${username} = {
    home = "/home/${username}";
    hashedPassword = hashedPassword;
    isNormalUser = true;
    packages = [pkgs.home-manager];
    extraGroups =
      [
        "wheel"
      ]
      ++ ifTheyExist [
        "audio"
        "video"
        "docker"
        "git"
        "networkmanager"
      ];
    shell = pkgs.zsh;
  };

  users.users.root = {
    hashedPassword = hashedPassword;
  };

  home-manager.users.${username} = ../home;
}
