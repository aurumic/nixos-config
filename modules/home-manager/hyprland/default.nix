{ pkgs, inputs, ... }:

{
  imports = [
    ./ags
    ./config.nix
    ./hyprland.nix
    ./hyprlock.nix
    inputs.hyprland.homeManagerModules.default
  ];
}