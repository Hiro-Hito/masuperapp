with import <nixpkgs> {};

let
  masuperlib-src = fetchTarball https://github.com/Hiro-Hito/masuperlib/archive/refs/tags/v0.1.tar.gz;

  masuperlib = callPackage masuperlib-src {};

in stdenv.mkDerivation {
    name = "masuperapp";
    src = ./.;
    nativeBuildInputs = [ cmake ];
    buildInputs = [ masuperlib ];
}

