{ pkgs, ... } :

{
  imports = [
    # general modules
    ./fonts.nix
    ./packages.nix

    # gui modules
    ./gui-modules/kitty.nix
    ./gui-modules/vscode.nix

    # shell modules
    ./shell-modules/eza.nix
    ./shell-modules/fish.nix
    ./shell-modules/fzf.nix
    ./shell-modules/git.nix
    ./shell-modules/neovim.nix
    ./shell-modules/thefuck.nix
  ];
}