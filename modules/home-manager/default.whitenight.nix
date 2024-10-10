{ pkgs, ... } :

{
  imports = [
    ./env.nix
    ./fonts.nix
    ./packages.nix

    ./gui-modules/firefox.nix
    ./gui-modules/kitty.nix
    ./gui-modules/vscode.nix

    ./cli-modules/eza.nix
    ./cli-modules/fish.nix
    ./cli-modules/fzf.nix
    ./cli-modules/git.nix
    ./cli-modules/neovim.nix
    ./cli-modules/thefuck.nix
  ];
}