{ pkgsUnstable, ... }:

{
  services.ananicy = {
    enable = true;
    package = pkgsUnstable.ananicy-cpp;
    rulesProvider = pkgsUnstable.ananicy-rules-cachyos;
    settings.check_freq = 1;
  };
}
