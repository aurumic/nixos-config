{ lib, ... } :

{
  imports = [
    ./dev-modules/git.nix
    ./dev-modules/fish.nix
    ./dev-modules/neovim.nix
    ./dev-modules/ruff.nix
    ./dev-modules/thefuck.nix
  ];

  git.enable = lib.mkDefault true;
  fish.enable = lib.mkDefault true;
  neovim.enable = lib.mkDefault true;
  ruff.enable = lib.mkDefault true;
  thefuck.enable = lib.mkDefault true;
}