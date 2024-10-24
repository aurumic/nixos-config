{ pkgs, username, ... }:

{
  services = {
    xserver = {
      enable = true;
      xkb = { layout = "ua,us"; };
    };

    displayManager.autoLogin = {
      enable = true;
      user = "${username}";
    };

    libinput = {
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
  };
}
