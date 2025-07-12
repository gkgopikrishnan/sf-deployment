#!/bin/bash

# Use HOME directory of current user, not /root
SNOWSQL_CONFIG_DIR="${HOME}/.snowsql"
SNOWSQL_CONFIG_FILE="${SNOWSQL_CONFIG_DIR}/config"

# Ensure config exists to suppress warning
mkdir -p "$SNOWSQL_CONFIG_DIR"
if [ ! -f "$SNOWSQL_CONFIG_FILE" ]; then
  echo "[connections]" > "$SNOWSQL_CONFIG_FILE"
fi

# Forward all arguments to snowsql
exec snowsql "$@"
