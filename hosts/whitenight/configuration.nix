{ lib, config, pkgs, inputs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./../../modules/system/intel.nix
    ./../../modules/system
    ./../../modules/nixos
  ];

  users.users.utsurei = {
    isNormalUser = true;
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.fish;
    ignoreShellProgramCheck = true;
  };

  home-manager = {
    extraSpecialArgs = { inherit inputs; };
    users = {
      "utsurei" = import ./home.nix;
    };
  };

  networking.hostName = "whitenight";
  networking.networkmanager.enable = true;

  boot.kernelParams = [ "i915.force_probe=7d55" ];

  # services.xserver.enable = false;
  # services.xserver.videoDrivers = [ "modesetting" ];

  services.displayManager.sddm.enable = true;
  services.desktopManager.plasma6.enable = true;

  services.displayManager.defaultSession = "plasma";
  services.displayManager.sddm.wayland.enable = true;

  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  programs.steam = {
    enable = true;
    remotePlay.openFirewall = false;
    dedicatedServer.openFirewall = false;
    localNetworkGameTransfers.openFirewall = false;
  };

  environment.systemPackages = with pkgs; [
    neofetch
    devenv
    fzf
    grc
    eza
    gh
  ];

  system.stateVersion = "24.05";
}
