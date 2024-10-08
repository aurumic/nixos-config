{ pkgs, ... }:

{
  home.packages = with pkgs; [
    libreoffice
    telegram-desktop
  ];
}