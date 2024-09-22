{ pkgs, ... }:

{
  nix.settings = {
    experimental-features = [ "nix-command" "flakes" ];
    auto-optimise-store = true;
  };

  nixpkgs.config.allowUnfree = true;

  time.timeZone = "Europe/Kyiv";
  i18n.defaultLocale = "C.UTF-8";

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