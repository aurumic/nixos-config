{ pkgs, ... }:

{
  programs.rofi = {
    enable = true;
    extraConfig = {
      modi = "run,drun,window";
      lines = 5;
      cycle = false;
      font = "Hasklug Nerd Font Bold 15";
      show-icons = true;
      icon-theme = "Papirus-dark";
      terminal = "kitty";
      drun-display-format = "{icon} {name}";
      location = 0;
      disable-history = true;
      hide-scrollbar = true;
      display-drun = " Apps ";
      display-run = " Run ";
      display-window = " Window ";
      /* display-Network: " Network"; */
      sidebar-mode = true;
      sorting-method = "fzf";
    };
  };
}