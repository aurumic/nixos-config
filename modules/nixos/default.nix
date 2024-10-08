{ lib, config, pkgs, ... }:

{
  imports = [
    ./packages.nix
    ./steam.nix
  ];
}
