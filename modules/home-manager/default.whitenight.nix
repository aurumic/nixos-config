{ ... }:

{
  imports = [
    ./cli-modules
    ./gui-modules
    ./hyprland

    ./env.nix
    ./gtk.nix
    ./packages.nix
  ];
}
