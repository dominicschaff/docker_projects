#!/usr/bin/env bash

if [ ! -z "$CHECK"  ]; then
  CHECK_HOST="$(echo "$CHECK" | cut -d':' -f1)"
  CHECK_PORT="$(echo "$CHECK" | cut -d':' -f2)"
fi

if [ -z "$CHECK_HOST" ]; then
  echo "CHECK_HOST env must be set, or if using CHECK format should be 'CHECK=host:port'"
  exit 1
fi

if [ -z "$CHECK_PORT"  ]; then
  echo "CHECK_PORT env must be set, or if using CHECK format should be 'CHECK=host:port'"
  exit 1
fi

until nc -z "$CHECK_HOST" "$CHECK_PORT"; do
  sleep 0.5
done
