{ pkgs, ... }:

{
  imports = [
    ./waybar.nix
    ./config.nix
  ];
}