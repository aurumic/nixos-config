{ pkgs, inputs, ... }:

{
  programs.spicetify =
  let
    spicePkgs = inputs.spicetify-nix.legacyPackages.${pkgs.system};
  in
  {
  enable = true;

  enabledExtensions = with spicePkgs.extensions; [
    popupLyrics
    songStats
    adblock
    hidePodcasts
    shuffle # shuffle+ (special characters are sanitized out of extension names)
    oneko
  ];
  enabledCustomApps = with spicePkgs.apps; [
    newReleases
    lyricsPlus
    ncsVisualizer
  ];

  theme = spicePkgs.themes.onepunch;
  };
}