{ ... }:

{
  programs.waybar.settings = {
    mainBar = {
      layer = "top";
      position = "top";
      height = 36;

      modules_left = [
        "custom/rofi-launcher"
        "hyprland/workspaces"
      ];

      modules-center = [
        "clock"
      ];

      modules-right = [
        "cpu"
        "memory"
        "backlight"
        "hyprland/language"
        "bluetooth"
        "pulseaudio"
        "network"
        "battery"
      ];

      "custom/rofi-launcher" = {
        format = "";
        on-click = "rofi -show drun";
      };

      "hyprland/workspaces" = {
        active-only = false;
        all-outputs = true;
        move-to-monitor = true;
        show-special = true;

        format = "{icon}";
        format-icons = {
          "1" = "";
          "2" = "II";
          "3" = "III";
          "4" = "IV";
          "5" = "V";
          "6" = "VI";
          "7" = "";
          "8" = "";
        };

        persistent-workspaces = {
          "*" = 8;
        };
      };

      clock = {
        format = "  {:%H:%M}";
        format-alt = "  {:%d/%m}";
        tooltip = "true";
        tooltip-format = "<b>{:%Y %B}</b>\n{calendar}";

        calendar = {
          mode = "year";
          mode-mon-col = 4;
          weeks-pos = "left";
        };
      };

      backlight = {
        format = "{percent}% {icon}";
        format-icons = [
          "󰃞"
          "󰃠"
        ];
      };

      "hyprland/language" = {
        format = "{}";
      };
    };
  };
}
