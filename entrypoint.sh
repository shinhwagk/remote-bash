#!/bin/sh
set -e

if [ -z "$REMOTE_BASH_URL" ]; then
  echo "\$REMOTE_BASH_URL" not found
  exit 1
fi

 curl -sLk $REMOTE_BASH_URL | bash -s -- $@
