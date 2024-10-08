{ pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./../../modules/system/intel.nix
    ./../../modules/system
    ./../../modules/nixos
  ];

  boot.kernelParams = [ "i915.force_probe=7d55" ];

  services.desktopManager.plasma6.enable = true;

  services.displayManager.defaultSession = "plasma";
  services.displayManager.sddm.enable = true;
  services.displayManager.sddm.wayland.enable = true;
}
