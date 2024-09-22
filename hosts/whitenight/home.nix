{ lib, config, pkgs, inputs, ... }:

{
  imports = [
    ./../../modules/home-manager/default.nix
    ./../../modules/home-manager/fonts.nix
  ];

  home.username = "utsurei";
  home.homeDirectory = "/home/utsurei";

  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    fzf
    neofetch
    grc
    eza
    gh
    vscode
    libreoffice-qt
    telegram-desktop
  ];

  programs = {
    firefox.enable = true;

    bash.enable = true;
  };

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {};

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  home.stateVersion = "24.05";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;    
}
