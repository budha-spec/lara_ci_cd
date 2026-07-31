#!/bin/bash
set -e

APP_DIR="/var/app/current"

cd "$APP_DIR"

mkdir -p bootstrap/cache

mkdir -p storage/framework/cache
mkdir -p storage/framework/cache/data
mkdir -p storage/framework/sessions
mkdir -p storage/framework/views
mkdir -p storage/framework/testing
mkdir -p storage/logs

chown -R webapp:webapp storage
chown -R webapp:webapp bootstrap/cache

chmod -R 775 storage
chmod -R 775 bootstrap/cache
