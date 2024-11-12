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
    sl
    pipes
    tty-clock

    # gui
    libreoffice
    telegram-desktop
    vlc

    # c/c++
    gcc
    gnumake
    valgrind

    # python
    python3

    # nodejs
    bun

    # java
    temurin-bin
  ];
}