{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    htop
    wget
    speedtest-cli
    lm_sensors
    tree
  ];
}
