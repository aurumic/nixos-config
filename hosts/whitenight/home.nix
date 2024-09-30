{ lib, config, pkgs, inputs, ... }:

{
  imports = [
    ./../../modules/home-manager/fonts.nix
    ./../../modules/home-manager
  ];

  home.username = "utsurei";
  home.homeDirectory = "/home/utsurei";

  nixpkgs.config.allowUnfree = true;

  programs.firefox.enable = true;
  programs.bash.enable = true;

  home.packages = with pkgs; [
    libreoffice-qt
    telegram-desktop
  ];

  home.file = {};

  home.sessionVariables = {
    EDITOR = "nvim";
    BROWSER = "firefox";
    TERMINAL = "kitty";
  };

  programs.home-manager.enable = true;   
  home.stateVersion = "24.05"; 
}
