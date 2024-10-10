{ pkgs, ... }:

{
  home.packages = with pkgs; [
    (prismlauncher.override {
      jdks = [
        temurin-jre-bin-8
        temurin-jre-bin-17
        temurin-jre-bin-21
      ];
    })
  ];
}