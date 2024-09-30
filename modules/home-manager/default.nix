{ lib, ... } :

{
  imports = [
    ./shell-modules/git.nix
    ./shell-modules/fish.nix
    ./shell-modules/neovim.nix
    ./shell-modules/ruff.nix
    ./shell-modules/thefuck.nix

    ./gui-modules/vscode.nix
    ./gui-modules/kitty.nix
  ];

  git.enable = lib.mkDefault true;
  fish.enable = lib.mkDefault true;
  neovim.enable = lib.mkDefault true;
  ruff.enable = lib.mkDefault true;
  thefuck.enable = lib.mkDefault true;

  vscode.enable = lib.mkDefault true;
  kitty.enable = lib.mkDefault true;
}