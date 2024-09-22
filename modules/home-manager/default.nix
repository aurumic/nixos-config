{ lib, ... } :

{
  imports = [
    ./git.nix

    ./fish.nix
    ./neovim.nix
  ];

  git.enable = lib.mkDefault true;
  fish.enable = lib.mkDefault true;
  neovim.enable = lib.mkDefault true;
}