{ pkgs, username, ... }:

{
  services = {
    xserver = {
      enable = true;
      xkb = {
        layout = "us,ua";
      };
    };

    displayManager.autoLogin = {
      enable = false;
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
