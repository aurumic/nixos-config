{ pkgs, ... }:

{
  programs.hyprlock = {
    enable = true;
    settings = {
      general = {
        disable_loading_bar = false;
        hide_cursor = true;
        grace = 0;
        enable_fingerprint = false;
      };

      background = [
        {
          monitor = "";
          path = "../../../wallpapers/gruv-abstract-maze.png";
          blur_passes = 3;
          blur_size = 5;
          noise = 0.0117;
          contrast = 0.8916;
          brightness = 0.8172;
          vibrancy = 0.1696;
          vibrancy_darkness = 0.0;
        }
      ];
    };
  };
}