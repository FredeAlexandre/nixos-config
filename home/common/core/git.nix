{...}: {
  programs.git = {
    enable = true;
    userEmail = "alexandre.frede.pro@gmail.com";
    userName = "Alexandre Frede";
  };

  environment.systemPackages = with pkgs; [
    lazygit
  ];
}
