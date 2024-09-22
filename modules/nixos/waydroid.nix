{ lib, config, pkgs, ... }:

{
  options = {
    waydroid.enable = lib.mkEnableOption "enable waydroid";
  };

  config = lib.mkIf config.waydroid.enable {
    virtualisation.waydroid.enable = true;

    environment.systemPackages = with pkgs; [
      wl-clipboard
    ];
  };
}