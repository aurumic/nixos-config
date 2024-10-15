{ pkgs, inputs, host, ...}:

{
  home.packages = with pkgs; [
    swww
    swaybg
    inputs.hyprland-contrib.packages.${pkgs.system}.grimblast
    grim
    slurp
    wl-clip-persist
    wf-recorder
    wayland
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    xwayland = {
      enable = true;
    };
    # enableNvidiaPatches = false;
    systemd.enable = true;
  };
}