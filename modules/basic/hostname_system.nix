{ hostName, system, ... }:

{
  networking = { inherit hostName; };
  nixpkgs.hostPlatform = system;
}