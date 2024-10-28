{ pkgs, ... }:

{
  wayland.windowManager.hyprland = {
    settings = {
      exec-once = [
        "swaync &"
        "waybar &"
        "hyprlock"
      ];

      input = {
        kb_layout = "us,ua";
        kb_options ="grp:alt_caps_toggle"; 
        numlock_by_default = true;
        follow_mouse = 0;
        float_switch_override_focus = 0;
        mouse_refocus = 0;
        sensitivity = 0;
        touchpad = {
          natural_scroll = true;
        };
      };
    };
  };
}