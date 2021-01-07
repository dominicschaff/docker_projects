#!/usr/bin/env bash

if [ -z "$CHECK_HOST" ]; then
  echo "CHECK_HOST env must be set"
  exit 1
fi

if [ -z "$CHECK_PORT"  ]; then
  echo "CHECK_PORT env must be set"
  exit 1
fi

until nc -z "$CHECK_HOST" "$CHECK_PORT"; do
  sleep 0.5
done
