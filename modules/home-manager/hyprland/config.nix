{ pkgs, ... }:

{
  wayland.windowManager.hyprland = {
    settings = {
      exec-once = [
        "swaync &"
      ]
    };
  };
}