{ lib, ... } :

{
  imports = [
    ./dev-modules/git.nix
    ./dev-modules/fish.nix
    ./dev-modules/neovim.nix
  ];

  git.enable = lib.mkDefault true;
  fish.enable = lib.mkDefault true;
  neovim.enable = lib.mkDefault true;
}