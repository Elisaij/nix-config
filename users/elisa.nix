{ pkgs, ... }:

{
  programs.zsh.enable = true;

  users.users."elisa" = {
    isNormalUser = true;
    description = "Elisa Ihle Julbø";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.zsh;
    packages = with pkgs; [
      alacritty
    ];
  };
}
