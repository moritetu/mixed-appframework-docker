#!/bin/sh
# vim:sw=4:ts=4:et

set -e

if [ -z "${NGINX_ENTRYPOINT_QUIET_LOGS:-}" ]; then
    exec 3>&1
else
    exec 3>/dev/null
fi

for hook in /docker-entrypoint.d/*.sh; do
  if [ -x "$hook" ]; then
    "$hook"
  else
    echo >&3 "not executable: $f";
  fi
done

exec "$@"
