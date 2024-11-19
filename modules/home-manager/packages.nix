{ pkgs, ... }:

{
  home.packages = with pkgs; [
    swaynotificationcenter
    direnv

    # cli
    ani-cli
    pavucontrol
    brightnessctl
    playerctl
    btop
    neofetch
    devenv
    grc
    binsider
    ripgrep
    cowsay # self explanatory
    sl # funny train
    pipes
    tty-clock

    # gui
    libreoffice
    dolphin
    telegram-desktop
    vlc

    # nix
    nixfmt-rfc-style # formatter
    nixd # language server

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
