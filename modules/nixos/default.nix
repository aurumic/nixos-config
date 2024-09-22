{ ... }:

{
  imports = [
    ./waydroid.nix
  ];

  waydroid.enable = lib.mkDefault true;
}