#!/bin/bash
set -e

echo "Postdeploy started"

cd /var/app/current

php artisan optimize:clear

echo "Postdeploy finished"
