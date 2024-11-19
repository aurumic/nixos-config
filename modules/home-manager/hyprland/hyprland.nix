{
  pkgs,
  inputs,
  ...
}:

{
  home.packages = with pkgs; [
    wayland
    
    swww
    swaybg
    hyprpicker
    hyprpaper
    
    grim
    slurp
    inputs.hyprland-contrib.packages.${pkgs.system}.grimblast
    
    glib
    direnv

    wl-clipboard
    wl-clip-persist

    wf-recorder
  ];

  systemd.user.targets.hyprland-session.Unit.Wants = [ "xdg-desktop-autostart.target" ];
  wayland.windowManager.hyprland = {
    enable = true;
    # enableNvidiaPatches = false;
    systemd.enable = true;
  };
}
