{ pkgs, ... }:

{
  programs.rofi.extraConfig = {
    modi = "run,drun,window";
    terminal = "kitty";
    sorting-method = "fzf";

    lines = 5;
    location = 0;

    font = "Hasklug Nerd Font Bold 15";
    icon-theme = "Papirus-dark";
    show-icons = true;

    drun-display-format = "{icon} {name}";
    display-drun = " Apps ";
    display-run = " Run ";
    display-window = " Window ";
    /* display-Network: " Network"; */

    disable-history = true;
    hide-scrollbar = true;
    sidebar-mode = true;
    cycle = false;
  };
}