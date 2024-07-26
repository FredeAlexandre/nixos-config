default:
  @just --list

rebuild:
  scripts/system-flake-rebuild.sh

rebuild-for host:
  scripts/system-flake-rebuild.sh {{host}}

download-dwm-patches url:
  scripts/download-patches.sh {{url}} ./hosts/common/dotfiles/dwm/patches

download-dmenu-patches url:
  scripts/download-patches.sh {{url}} ./home/alexfrede/common/dotfiles/dmenu/patches

download-st-patches url:
  scripts/download-patches.sh {{url}} ./home/alexfrede/common/dotfiles/st/patches
