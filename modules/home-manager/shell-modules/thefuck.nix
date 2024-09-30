{ lib, config, pkgs, ... }:

{
  options = {
    thefuck.enable = lib.mkEnableOption "enable thefuck";
  };

  config = lib.mkIf config.thefuck.enable {
    programs.thefuck = {
      enable = true;
      enableFishIntegration = true;
    };
  };
}