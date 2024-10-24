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
    wl-clip-persist
    wf-recorder
    wayland
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    # enableNvidiaPatches = false;
    systemd.enable = true;
  };
}