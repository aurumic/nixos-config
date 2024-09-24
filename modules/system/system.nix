{ pkgs, ... }:

{
  nix.settings = {
    experimental-features = [ "nix-command" "flakes" ];
    auto-optimise-store = true;
  };

  nixpkgs.config.allowUnfree = true;

  time.timeZone = "Europe/Kyiv";
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

  services.libinput = {
    enable = true;
    touchpad = {
      accelProfile = "flat";

      tapping = true;
      tappingButtonMap = "lrm";
      tappingDragLock = false;
      middleEmulation = true;

      scrollMethod = "twofinger";
      naturalScrolling = false;
      horizontalScrolling = true;
      disableWhileTyping = false;
    };
  };

  hardware.bluetooth.enable = true;
  hardware.pulseaudio.enable = false;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;
  };

  security.rtkit.enable = true;
}