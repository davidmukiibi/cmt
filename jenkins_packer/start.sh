#!/bin/bash

set -e
set -o pipefail

start_app() {
  cd cmt && chmod 777 start.sh && ./start.sh
}

main() {
  start_app
}

main "$@"
