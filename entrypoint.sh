#!/bin/bash

# Ensure config directory and file exist to suppress warnings
mkdir -p /root/.snowsql
if [ ! -f /root/.snowsql/config ]; then
  echo "[connections]" > /root/.snowsql/config
fi

# Forward all arguments to snowsql
exec snowsql "$@"
