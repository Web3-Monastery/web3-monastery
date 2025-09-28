{ ... }:

{
  users.users.root = {
    hashedPassword = "$6$kLIZlGOf5MaHKVEW$tn6NbE3cCthyjYj2kBFFJoXYuwlnjb9vPQTzKdSnBOFueZc88CLklyqqklQIqVg9WsjU6pOuQTXgvsyHdBKaa1";
    openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIG0MiD5bEMG19uW09YutxhWwlxUdEyunIrSihm2E6wTq SADFrancis@gmail.com"
    ];
  };
}