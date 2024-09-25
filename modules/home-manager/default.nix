{ lib, ... } :

{
  imports = [
    ./shell-modules/git.nix
    ./shell-modules/fish.nix
    ./shell-modules/neovim.nix
    ./shell-modules/ruff.nix
    ./shell-modules/thefuck.nix
  ];

  git.enable = lib.mkDefault true;
  fish.enable = lib.mkDefault true;
  neovim.enable = lib.mkDefault true;
  ruff.enable = lib.mkDefault true;
  thefuck.enable = lib.mkDefault true;
}