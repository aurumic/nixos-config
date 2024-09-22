{ lib, config, pkgs, ... }:

{
  imports = [
    ./waydroid.nix
  ];

  waydroid.enable = lib.mkDefault true;
}