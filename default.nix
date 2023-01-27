with import <nixpkgs> {};

let
  masuperlib-src = fetchTarball "https://github.com/Hiro-Hito/masuperlib/releases/tag/v0.1";

  masuperlib = callPackage masuperlib-src {};

in stdenv.mkDerivation {
    name = "masuperapp";
    src = ./.;
    nativeBuildInputs = [ cmake ];
    buildInputs = [ masuperlib ];
}

