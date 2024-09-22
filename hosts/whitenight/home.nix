{ lib, config, pkgs, inputs, ... }:

{
  imports = [
    ./../../modules/home-manager/fonts.nix
    ./../../modules/home-manager
  ];

  home.username = "utsurei";
  home.homeDirectory = "/home/utsurei";

  programs.firefox.enable = true;
  programs.bash.enable = true;

  home.packages = with pkgs; [
    fzf
    grc
    eza
    gh
    vscode
    libreoffice-qt
    telegram-desktop
    neofetch
  ];

  home.file = {};

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  programs.home-manager.enable = true;   
  home.stateVersion = "24.05"; 
}
