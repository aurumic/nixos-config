{ pkgs, ... }:

{
  imports = [
    ./packages.nix
    ./steam.nix
  ];
}
