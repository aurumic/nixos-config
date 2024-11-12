{ ... }:

{
  programs.eza = {
    enable = true;
    enableFishIntegration = true;

    icons = true;
    git = false;

    extraOptions = [
      "--group-directories-first"
      "--group"
      "--smart-group"
      "--header"
    ];
  };
}
