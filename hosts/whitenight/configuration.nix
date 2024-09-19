  # Edit this configuration file to define what should be installed on
  # your system.  Help is available in the configuration.nix(5) man page
  # and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, inputs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    # ./home.nix  
  ];

  home-manager = {
    extraSpecialArgs = { inherit inputs; };
    users = {
      "utsurei" = import ./home.nix;
    };
  };

    # Bootloader.
    boot.loader.systemd-boot.enable = true;
    boot.loader.efi.canTouchEfiVariables = true;

    boot.kernelParams = [ "i915.force_probe=7d55" ];

    networking.hostName = "whitenight";
    networking.networkmanager.enable = true;
    
    nix.settings.experimental-features = [ "nix-command" "flakes" ];

    # Set your time zone.
    time.timeZone = "Europe/Kyiv";

    # Select internationalisation properties.
    i18n.defaultLocale = "C.UTF-8";

    i18n.extraLocaleSettings = {
      LC_ADDRESS = "C.UTF-8";
      LC_IDENTIFICATION = "C.UTF-8";
      LC_MEASUREMENT = "C.UTF-8";
      LC_MONETARY = "en_US.UTF-8";
      LC_NAME = "C.UTF-8";
      LC_NUMERIC = "en_NZ.UTF-8";
      LC_PAPER = "C.UTF-8";
      LC_TELEPHONE = "C.UTF-8";
      LC_TIME = "en_NZ.UTF-8";
    };

    # Enable the X11 windowing system.
    # You can disable this if you're only using the Wayland session.
    services.xserver.enable = true;
    services.xserver.videoDrivers = [ "modesetting" ];

    # Enable the KDE Plasma Desktop Environment.
    services.displayManager.sddm.enable = true;
    services.desktopManager.plasma6.enable = true;

    services.displayManager.defaultSession = "plasma";
    services.displayManager.sddm.wayland.enable = true;

    # Configure keymap in X11
    services.xserver.xkb = {
      layout = "us";
      variant = "";
    };

    services.libinput.enable = true;

    # Enable CUPS to print documents.
    services.printing.enable = true;

    # Enable sound with pipewire.
    hardware.pulseaudio.enable = false;
    security.rtkit.enable = true;
    services.pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
      jack.enable = true;
    };

  hardware.bluetooth.enable = true;
  hardware.graphics = {
    enable = true;
    extraPackages = with pkgs; [
      intel-media-driver
      vpl-gpu-rt
    ];
  };

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.utsurei = {
    isNormalUser = true;
    description = "utsurei";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.fish;
    packages = with pkgs; []; 
  };



  nixpkgs.config.allowUnfree = true;

  programs = {
    fish.enable = true;

    firefox.enable = true;
    git.enable = true;
    steam.enable = true;
  };

  environment.systemPackages = with pkgs; [
    gh
  ];

  system.stateVersion = "24.05";
}
