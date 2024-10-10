{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # cli
    ani-cli
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