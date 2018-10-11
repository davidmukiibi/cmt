#!/bin/bash

set -e
set -o pipefail

create_user() {
  if ! id -u david; then
    sudo useradd -m -s /bin/bash david
    sudo usermod -aG sudo david
  fi
}
create_home_dir() {
  sudo mkdir /app
}

main() {
  create_user
  create_home_dir
}

main "$@"


