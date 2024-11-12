{ pkgs, ... }:

{
  imports = [
    ./bootloader.nix
    ./network.nix
    ./pipewire.nix
    ./programs.nix
    ./security.nix
    ./services.nix
    ./system.nix
    ./users.nix
    ./wayland.nix
    ./xserver.nix
  ];
}
