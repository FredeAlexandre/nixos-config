{
  lib,
  rustPlatform,
  fetchFromGitHub,
  pkgs,
}:
rustPlatform.buildRustPackage rec {
  pname = "impala";
  version = "0.5.1";

  src = fetchFromGitHub {
    owner = "pythops";
    repo = "bluetui";
    rev = "v${version}";
    hash = "sha256-9svPIZzKuI4XBlxBsKucGLdX2dkfAy9ERT5oj8Su9TM=";
  };

  cargoHash = "sha256-jeksxUBF6bDIL39pjwR2B/x4aS2TU1vT/uZxNry7GMQ=";

  nativeBuildInputs = [pkgs.pkg-config];
  buildInputs = [pkgs.dbus];

  meta = {
    description = "TUI for managing bluetooth on Linux";
    homepage = "https://github.com/pythops/bluetui";
    platforms = lib.platforms.linux;
  };
}
