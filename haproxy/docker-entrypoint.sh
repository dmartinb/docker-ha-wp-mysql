#!/bin/sh
set -e

if [ "$1" = 'haproxy' ]; then
	shift # "haproxy"
	set -- "$(which haproxy-systemd-wrapper)" -p /run/haproxy.pid -db "$@"
fi

exec "$@"
