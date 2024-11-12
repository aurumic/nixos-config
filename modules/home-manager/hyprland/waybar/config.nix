{ pkgs, ... }:

{
  programs.waybar.settings = {
    mainBar = {
      layer = "top";
      position = "top";
      height = 30;

      modules_left = [
        "custom/rofi-launcher"
        "hyprland/workspaces"
      ];

      modules-center= [
        "clock"
      ];

      modules-right= [
        "cpu"
        "memory"
        "backlight/slider"
        "sway/language"
        "bluetooth"
        "pulseaudio" 
        "network"
        "battery"
      ];



      "custom/rofi-launcher" = {
        format = "";
        on-click = "rofi -show drun"
      };

      "sway/language" = {
        format = "{short} {flag}"
      };
    };
  };
}