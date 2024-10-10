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
    prismlauncher
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
    temurin-jre-bin-8
    temurin-jre-bin-17
    temurin-jre-bin-21
  ];
}