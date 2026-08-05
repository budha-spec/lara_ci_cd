#!/bin/bash
set -e

echo "===== POSTDEPLOY STARTED ====="

APP_DIR="/var/app/current"

if [ ! -d "$APP_DIR" ]; then
    echo "Application directory not found: $APP_DIR"
    exit 1
fi

cd "$APP_DIR"

echo "Fixing permissions..."

chown -R webapp:webapp storage bootstrap/cache
chmod -R 775 storage bootstrap/cache

echo "Clearing Laravel caches..."

php artisan optimize:clear

echo "Caching configuration..."

php artisan config:cache

echo "Caching routes..."

php artisan route:cache || true

echo "Caching views..."

php artisan view:cache || true

echo "Running database migrations..."

php artisan migrate --force

echo "===== POSTDEPLOY FINISHED ====="
