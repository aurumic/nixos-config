{ pkgs, ... }:

{
  services = {
    dbus.enable = true;
    gnome.gnome-keyring.enable = true;
  };
}