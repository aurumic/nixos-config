{ pkgs, inputs, ... }:

{
  programs.spicetify =
  let
    spicePkgs = inputs.spicetify-nix.legacyPackages.${pkgs.system};
  in
  {
  enable = true;

  enabledExtensions = with spicePkgs.extensions; [
    fullAppDisplay
    popupLyrics
    shuffle
    trashbin

    powerBar
    songStats
    betterGenres
    hidePodcasts
    savePlaylists
    playNext
    beautifulLyrics
    oneko
  ];

  enabledCustomApps = with spicePkgs.apps; [
    newReleases
    lyricsPlus
    ncsVisualizer
  ];

  theme = spicePkgs.themes.text;
  colorScheme = "gruvbox";
  };
}