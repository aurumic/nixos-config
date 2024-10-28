{ pkgs, ... }:

{
  programs.waybar = {
    enable = true;

    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        height = 30;

        modules_left = [
          "tray"
          "hyprland/workspaces"
        ];
        modules-center= [
          "clock"
        ];
        modules-right= [
          "cpu"
          "memory"
          "backlight/slider"
          "bluetooth"
          "pulseaudio" 
          "network"
          "sway/language"
          "battery"
        ];
      };
    };
  };
}