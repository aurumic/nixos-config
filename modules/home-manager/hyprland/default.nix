{ inputs, ... }:

{
  imports = [
    inputs.hyprland.homeManagerModules.default

    ./waybar

    ./config.nix
    ./hyprland.nix
    # ./hyprlock.nix
  ];
}
