{ lib, config, pkgs, ... }:

{
  options = {
    thefuck.enable = lib.mkEnableOption "enable thefuck";
    thefuck.alias = lib.mkOption { default = "fuck"; };
  };

  config = lib.mkif config.thefuck.enable {
    programs.thefuck = {
      enable = true;
      enableFishIntegration = true;
    };

    home.shellAliases = {
      fuck = "${config.thefuck.alias}";
    };
  };
}