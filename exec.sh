#!/usr/bin/env bash

# Get the directory where this script is located
CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Copy container files"
if [ ! -d "$CURRENT_DIR/etc/containers" ]; then
  mkdir -p $CURRENT_DIR/etc/containers
fi

cp /etc/containers/storage.conf $CURRENT_DIR/etc/containers/.

