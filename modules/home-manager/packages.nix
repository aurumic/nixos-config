{ pkgs, ... }:

{
  home.packages = with pkgs; [
    ani-cli
    binsider
    libreoffice
    ripgrep
    telegram-desktop
    vlc
  ];
}