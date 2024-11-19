{ ... }:

let
  font = "Hasklug Nerd Font";
  border-radius = "8px";
  font-size = "28px";
  small-icon-size = "34px";
  large-icon-size = "36px";

  # blacks, grays, whites
  bg = "#282828";
  fg = "#ebdbb2";
  l_gray = "#a89984"; # light gray
  d_gray = "#928374"; # dark gray

  # vibrant colors
  v_red = "#cc241d";
  v_green = "#98971a";
  v_yellow = "#d79921";
  v_blue = "#458588";
  v_purple = "#b16286";
  v_aqua = "#689d6a";
  v_orange = "#d65d0e";

  # faded colors
  f_red = "#fb4934";
  f_green = "#b8bb26";
  f_yellow = "#fabd2f";
  f_blue = "#83a59b";
  f_purple = "#d3869b";
  f_aqua = "#8ec07c";
  f_orange = "#fe8019";
in 
{
  programs.waybar.style = ''
    * {
      background: transparent;
      border: 0;
      border-radius: 0px;
      opacity: 1;
      font-family: ${font};
      font-weight: bold;
      font-size: ${font-size};
      margin: 0;
      padding: 0;
    }

    window#waybar {
      background: transparent;
    }

    tooltip {
      background: ${bg};
      border: 4px solid ${fg};
      border-radius: ${border-radius};
    }

    tooltip label {
      color: ${fg};
      margin: 5px;
      padding: 5px;
    }

    .modules-left, .modules-center, .modules-right {
      margin: 0;
    }

    @keyframes urgent-workspace {
      0% {text-shadow: 0 0 0; color: ${v_red};}
      50% {text-shadow: 0 0 5px ${v_red}; color: ${f_red};}
      100% {text-shadow: 0 0 0; color: ${v_red};}
    }





    #custom-launcher {
      background: ${v_purple};
      color: ${bg};
      border: 4px solid ${v_purple};
      border-radius: ${border-radius};
      font-size: ${large-icon-size};
      font-weight: bold;
      padding-left: 8px;
      padding-right: 22px;
    }

    #workspaces {
      background: ${bg};
      border: 4px solid ${v_orange};
      border-radius: ${border-radius};
      font-size: ${font-size};
      margin-left: 10px;
      padding-left: 10px;
      padding-right: 10px;
    }

    #workspaces button {
      background: ${bg};
      color: ${fg};
      padding-left: 7px;
      padding-right: 7px;
      transition: text-shadow 0.2s;
    }

    #workspaces button.empty {
      color: ${d_gray};
    }

    #workspaces button.active {
      background: ${bg};
      color: ${f_orange};
      text-shadow: 0 0 3px ${v_orange};
    }

    #workspaces button.urgent {
      color: ${v_red};
      animation: urgent-workspace 1.7s ease-in-out infinite;      
    }





    #mpris-module {
      background: ${bg};
      color: ${fg};
      border: 4px solid;
      border-radius: ${border-radius};
      border-color: ${v_red};
      margin-left: 10px;
      margin-right: 10px;
      padding: 0;
    }

    #mpris-module #mpris.text {
      border: 4px solid;
      border-radius: ${border-radius};
      border-color: ${v_red};
      margin: -4px;
      padding-left: 10px;
      padding-right: 10px;
    }

    #mpris-module #mpris.icon {
      background: ${v_red};
      color: ${bg};
      font-size: ${small-icon-size};
      padding-left: 10px;
      padding-right: 25px;
    }





    #tray, #language, #backlight, #wireplumber, #bluetooth, #network, #battery-module, #battery-module #battery.text, #clock {
      background: ${bg};
      color: ${fg};
      border: 4px solid;
      border-radius: ${border-radius};
      margin-right: 10px;
      padding-left: 10px;
      padding-right: 10px;
    }

    #network {
      border-color: ${v_blue};
      padding-right: 34px;
    }

    #battery-module {
      border-color: ${v_aqua};
      padding: 0;
    }

    #battery-module #battery.text {
      color: ${fg};
      border-color: ${v_aqua};
      margin: -4px;
    }

    #battery-module #battery.icon {
      background: ${v_aqua};
      color: ${bg};
      font-size: ${large-icon-size};
      padding-left: 16px;
      padding-right: 13px;
    }

    #clock {
      border-color: ${v_green};
      font-size: ${small-icon-size};
      margin-right: 0;
    }
  '';
}
