{ ... }:

{
  systemd.watchdog = {
    runtimeTime = "20s";
    rebootTime = "30s";
  };
}
