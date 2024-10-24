{ pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./../../modules/system/intel.nix
    ./../../modules/system
    ./../../modules/nixos
  ];

  boot.kernelParams = [ "i915.force_probe=7d55" ];

  hardware.bluetooth.enable = true;
}
