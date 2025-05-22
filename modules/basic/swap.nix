{ lib, ... }:

{
  boot.kernel.sysctl = {
    "vm.overcommit_ratio" = 100;
    "vm.overcommit_memory" = lib.mkForce 1;
    "vm.swappiness" = 200;
    "vm.watermark_boost_factor" = 150;
    "vm.page-cluster" = 0;
    "vm.min_free_kbytes" = 2097152;
  };
}
