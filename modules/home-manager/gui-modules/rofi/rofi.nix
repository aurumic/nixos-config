{ pkgs, ... }:

{
  programs.rofi = {
    enable = true;

    pass = {
      enable = false;
    };
  };
}