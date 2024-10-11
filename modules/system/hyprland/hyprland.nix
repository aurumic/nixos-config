{ pkgs, inputs, host, ...}:

{
  home.packages = with pkgs; [
    # swww
    swaybg
    inputs.hypr-contrib.packages.${pkgs.system}.grimblast
    hyprpicker
    inputs.hyprmag.packages.${pkgs.system}.hyprmag
    grim
    slurp
    wl-clip-persist
    wf-recorder
    glib
    wayland
    direnv
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    xwayland = {
      enable = true;
      # hidpi = true;
    };
    # enableNvidiaPatches = false;
    systemd.enable = true;
  };
}