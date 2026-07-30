#!/bin/bash
set -e

echo "========================================"
echo "Laravel Postdeploy Started"
echo "========================================"

APP_DIR="/var/app/current"

cd $APP_DIR

echo "Installing Composer dependencies..."

composer install \
    --no-dev \
    --prefer-dist \
    --optimize-autoloader \
    --no-interaction

echo "Generating application key..."

php artisan key:generate --force

echo "Running migrations..."

php artisan migrate --force

echo "Clearing caches..."

php artisan optimize:clear

echo "Caching configuration..."

php artisan config:cache
php artisan route:cache
php artisan view:cache

echo "Restarting queue..."

php artisan queue:restart || true

echo "Restarting services..."

systemctl restart nginx || true
systemctl restart php-fpm || true

echo "Deployment completed successfully."