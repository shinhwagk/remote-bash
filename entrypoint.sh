#!/bin/sh
set -e

if [ -z "$REMOTE_BASH_URL" ]; then
  echo "\$REMOTE_BASH_URL" not found
  exit 1
fi

if [ -z "$COMMAND_NAME" ]; then
  COMMAND=${COMMAND_NAME-${REMOTE_BASH_URL##*/}}
fi

curl -o /usr/local/bin/$COMMAND $REMOTE_BASH_URL

chmod +x /usr/local/bin/$COMMAND
/usr/local/bin/$COMMAND $@
