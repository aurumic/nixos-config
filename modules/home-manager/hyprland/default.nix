{ pkgs, inputs, ... }:

{
  imports = [
    ./config.nix
    ./hyprland.nix
    inputs.hyprland.homeManagerModules.default
  ];
}