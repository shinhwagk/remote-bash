#!/bin/sh
set -e

curl -o /usr/local/bin/$COMMAND_NAME $REMOTE_BASH_URL

/usr/local/bin/$COMMAND_NAME
