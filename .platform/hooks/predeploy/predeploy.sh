#!/bin/bash
set -e

echo "========================================"
echo "Laravel Predeploy Started"
echo "========================================"

APP_DIR="/var/app/current"

cd $APP_DIR

echo "Creating Laravel directories..."

mkdir -p storage/framework/cache
mkdir -p storage/framework/cache/data
mkdir -p storage/framework/sessions
mkdir -p storage/framework/views
mkdir -p storage/framework/testing
mkdir -p storage/logs

echo "Setting permissions..."

chown -R webapp:webapp storage
chown -R webapp:webapp bootstrap/cache

chmod -R 775 storage
chmod -R 775 bootstrap/cache

echo "Checking .env..."

if [ ! -f .env ]; then
    cp .env.example .env
fi

echo "Predeploy completed."