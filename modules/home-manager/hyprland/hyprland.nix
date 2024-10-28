{ pkgs, inputs, host, ...}:

{
  home.packages = with pkgs; [
    swww
    swaybg
    hyprpicker
    hyprpaper
    inputs.hyprland-contrib.packages.${pkgs.system}.grimblast
    grim
    slurp
    glib
    direnv
    wl-clip-persist
    wf-recorder
    wayland
  ];

  systemd.user.targets.hyprland-session.Unit.Wants = [ "xdg-desktop-autostart.target" ];
  wayland.windowManager.hyprland = {
    enable = true;
    # enableNvidiaPatches = false;
    systemd.enable = true;
  };
}