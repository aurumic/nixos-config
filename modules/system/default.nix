{ pkgs, ... }:

{
  imports = [
    ./bootloader.nix
    ./network.nix
    ./pipewire.nix
    ./security.nix
    ./system.nix
    ./users.nix
    ./xserver.nix
  ];
}