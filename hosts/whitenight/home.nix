{ config, pkgs, inputs, ... }:

{
  # imports = [
  #   (modulesPath + "/home-manager/fish.nix")
  # ];

  home.username = "utsurei";
  home.homeDirectory = "/home/utsurei";

  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    vscode
    libreoffice-qt
    telegram-desktop
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {};

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  home.stateVersion = "24.05";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;    

  programs = {
    git = {
      enable = true;
      userName = "aurumic";
      userEmail = "zarlophoenix@gmail.com";
    };

    direnv = {
      enable = true;
      # enableFishIntegration = true;
      nix-direnv.enable = true;
    };

    neovim.enable = true;

    bash.enable = true;
  };
}
