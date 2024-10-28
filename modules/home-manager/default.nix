{ pkgs, ... } :

{
  imports = [
    ./hyprland

    # general modules
    ./packages.nix
    ./gtk.nix

    # gui modules
    ./gui-modules/kitty.nix
    ./gui-modules/vscode.nix

    # shell modules
    ./cli-modules/eza.nix
    ./cli-modules/fish.nix
    ./cli-modules/fzf.nix
    ./cli-modules/git.nix
    ./cli-modules/neovim.nix
    ./cli-modules/thefuck.nix
  ];
}