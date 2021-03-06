let
  sources = import ./nix;
  self = sources.tooling.haskell.ghc8102;
  pkgs = sources.tooling.pkgs;
in
  pkgs.mkShell {
    buildInputs = self.defaultInputs ++ [ pkgs.zlib ];
  }
