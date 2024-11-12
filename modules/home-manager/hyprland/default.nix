{ inputs, ... }:

{
  imports = [
    ./waybar

    ./config.nix
    ./hyprland.nix
    # ./hyprlock.nix

    inputs.hyprland.homeManagerModules.default
  ];
}
