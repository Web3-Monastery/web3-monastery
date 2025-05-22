{ ... }:

{
  security.pam.loginLimits = [{
    domain = "*";
    type = "soft";
    item = "nofile";
    value = "1048576";
  }];

  boot.kernel.sysctl = { "fs.file-max" = 1048576; };
}
