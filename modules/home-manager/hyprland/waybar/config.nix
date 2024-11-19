{ ... }:

let
  font = "Hasklug Nerd Font";
  border-radius = "8px";
  font-size = "28px";
  icon-size = "36px";

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
  f_yellow = "fabd2f";
  f_blue = "#83a59b";
  f_purple = "#d3869b";
  f_aqua = "#8ec07c";
  f_orange = "#fe8019";
in
{
  programs.waybar.settings = {
    mainBar = {
      layer = "top";
      position = "top";
      height = 60;
      margin-top = 20;
      margin-left = 20;
      margin-right = 20;

      modules-left = [
        "custom/launcher"
        "hyprland/workspaces"
      ];

      modules-center = [
        "group/mpris-module"
      ];

      modules-right = [
        "tray"
        "hyprland/language"
        "backlight"
        "wireplumber"
        "bluetooth"
        "network"
        "group/battery-module"
        "clock"
      ];





      "custom/launcher" = {
        format = "";
        on-click = "rofi -show drun";
        tooltip = false;
      };

      "hyprland/workspaces" = {
        active-only = false;
        all-outputs = true;
        move-to-monitor = true;
        show-special = true;

        format = "{icon}";
        format-icons = {
          "1" = "I";
          "2" = "II";
          "3" = "III";
          "4" = "IV";
          "5" = "V";
          "6" = "VI";
          "7" = "VII";
          "8" = "VIII";
          "9" = "IX";
          "10" = "X";
        };

        persistent-workspaces = {
          "*" = 8;
        };
      };





      "group/mpris-module" = {
        orientation = "inherit";
        modules = [
          "mpris#icon"
          "mpris#text"
        ];
      };

      "mpris#icon" = {
        format = "{player_icon}";
        ignored-players = [ "firefox" ];
        player-icons = {
          spotify = "";
          default = "";
        };
        tooltip = true;
      };

      "mpris#text" = {
        format = "{artist} - {title}";
        format-paused = "<i>{artist} - {title}</i>";
        ignored-players = [ "firefox" ];
        tooltip = false;
      };





      clock = {
        format = "{:%H:%M}";
        tooltip = true;
        tooltip-format = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";

        calendar = {
          mode = "year";
          mode-mon-col = 4;
          weeks-pos = "right";
        };
      };


      "hyprland/language" = {
        format = "{}";
        format-en = "en";
        format-ua = "ua";
      };

      backlight = {
        format = "{percent}% {icon}";
        format-icons = [
          "󰖔"
          "󰖙"
        ];
      };

      wireplumber = {
        format = "{volume}% {icon}";
        # format-muted = "{volume}% {icon}";
        format-icons = {
          muted = "";
          default = ["" "" ""];
        };
        on-click = "pkill pavucontrol || pavucontrol";
      };

      bluetooth = {
        
      };

      network = {
        format = "{ifname}";
        format-wifi = "{essid} ";
        format-ethernet = "";
        format-disconnected = "";
        tooltip = true;
        tooltip-format = "{ifname} via {gwaddr}";
        tooltip-format-wifi = "{gwaddr}/{cidr}\n{netmask}\n{frequency} - {signalStrength}%";
        tooltip-format-ethernet = "{ifname}";
        tooltip-format-disconnected = "Disconnected";
      };

      "group/battery-module" = {
        orientation = "inherit";
        modules = [
          "battery#text"
          "battery#icon"
        ];
      };

      "battery#text" = {
        bat = "BAT0";
        interval = 10;
        design-capacity = true;
        full-at = 98;
        states = { low = 30; critical = 15;};
        format = "{capacity}%";
        tooltip = false;
      };

      "battery#icon" = {
        bat = "BAT0";
        interval = 10;
        design-capacity = true;
        full-at = 98;
        states = { low = 30; critical = 15;};
        format = "{icon}";
        # format-charging = "";
        # format-critical = "";
        format-icons = {
          charging = "󰂄";
          critical = "󰂃";
          default = ["󰂎" "󰁺" "󰁻" "󰁼" "󰁽" "󰁾" "󰁿" "󰂀" "󰂁" "󰂂" "󰁹"];
        };
        tooltip = true;
        tooltip-format = "{timeTo}\n{health}% Healthy - {cycles} Cycles";
      };
    };
  };
}
