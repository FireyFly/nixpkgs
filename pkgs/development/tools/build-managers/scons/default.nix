{ callPackage, python2Packages }:

let
  mkScons = args: callPackage (import ./common.nix args) { };
in {
  scons_3_0_1 = (mkScons {
    version = "3.0.1";
    sha256 = "0wzid419mlwqw9llrg8gsx4nkzhqy16m4m40r0xnh6cwscw5wir4";
  }).override { python3Packages = python2Packages; };
  scons_3_1_2 = (mkScons {
    version = "3.1.2";
    sha256 = "1yzq2gg9zwz9rvfn42v5jzl3g4qf1khhny6zfbi2hib55zvg60bq";
  }).override { python3Packages = python2Packages; };
  scons_latest = mkScons {
    version = "4.1.0";
    sha256 = "11axk03142ziax6i3wwy9qpqp7r3i7h5jg9y2xzph9i15rv8vlkj";
  };
}
