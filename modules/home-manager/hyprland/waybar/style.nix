{ ... }:

{
  programs.waybar.style = ''
    * {
      border: none;
      border-radius: 0px;
      padding: 0;
      margin: 0;
      font-family: Hasklug Nerd Font;
      font-weight: bold;
      opacity: 1;
      font-size: 16px;
    }

    window#waybar {
      background: #282828;
      border-top: 1px solid #928374;
    }

    #custom-rofi-launcher {
      font-size: 20px;
      color: #ebdbb2;
      font-weight: bold;
      margin-left: 15px;
      padding-right: 10px;
    }
  '';
}
