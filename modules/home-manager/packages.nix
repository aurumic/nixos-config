{ pkgs, ... }:

{
  home.packages = with pkgs; [
    swaynotificationcenter
    direnv
    
    # cli
    ani-cli
    btop
    neofetch
    devenv
    grc
    binsider
    ripgrep

    # gui
    libreoffice
    telegram-desktop
    vlc

    # c/c++
    gcc
    gnumake

    # python
    python3

    # nodejs
    bun

    # java
    temurin-bin
  ];
}