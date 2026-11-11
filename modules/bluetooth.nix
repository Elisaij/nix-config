{ ... }:

{
  hardware.bluetooth = {
    enable = true;
  };
  services.blueman.enable = true;

  programs.dconf.profiles.user.databases = [{
    settings."org/blueman/general".plugin-list = [ "!ConnectionNotifier" ];
  }];
}
