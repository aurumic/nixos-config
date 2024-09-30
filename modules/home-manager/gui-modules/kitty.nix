{ lib, config, pkgs, ... }:

{
  options = {
    kitty.enable = lib.mkEnableOption "enable kitty";
  };

  config = lib.mkIf config.kitty.enable {
    programs.kitty = {
      enable = true;
      font = {
        name = "Hasklug Nerd Font";
      };

      shellIntegration.enableFishIntegration = true;
    };
  };
}