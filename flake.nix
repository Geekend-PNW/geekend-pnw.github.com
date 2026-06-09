{
  description = "Geekend PNW Jekyll site development environment";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in {
        devShells.default = pkgs.mkShell {
          packages = with pkgs; [
            ruby_3_3
            pkg-config
            gcc
            gnumake
            libxml2
            libxslt
            openssl
            zlib
          ];

          shellHook = ''
            export BUNDLE_PATH="$PWD/vendor/bundle"
            export PATH="$PWD/vendor/bundle/bin:$PATH"
            export LANG=en_US.UTF-8
            export LC_ALL=en_US.UTF-8

            export NOKOGIRI_USE_SYSTEM_LIBRARIES=1
            export PKG_CONFIG_PATH="${pkgs.libxml2.dev}/lib/pkgconfig:${pkgs.libxslt.dev}/lib/pkgconfig:$PKG_CONFIG_PATH"
            export LIBXML2_CONFIG="${pkgs.libxml2.dev}/bin/xml2-config"
            export XSLT_CONFIG="${pkgs.libxslt.dev}/bin/xslt-config"

            if [ ! -f vendor/bundle/.bundle-complete ]; then
              echo "Installing Ruby gems (first run only)..."
              bundle config set --local path 'vendor/bundle'
              bundle install
              touch vendor/bundle/.bundle-complete
            fi
          '';
        };
      });
}
