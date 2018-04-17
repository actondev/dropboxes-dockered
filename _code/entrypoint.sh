#!/bin/bash

set -e #  Exit immediately if a command exits with a non-zero status.

if [[ "$DEBUG" -eq 2 ]]; then
  exec tail -f /etc/hosts
else
  exec /.dropbox-dist/dropboxd
fi
