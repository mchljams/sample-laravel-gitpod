#!/bin/bash

composer create-project --prefer-dist --no-scripts laravel/laravel laravel

cp .env ../laravel/.env
cd ../laravel

composer config repositories.repo-name vcs https://github.com/mchljams/travellog.git
composer require mchljams/travellog:dev-master

touch ./database/database.sqlite

php artisan key:generate
php artisan vendor:publish --tag=travellog --force
php artisan migrate
php artisan db:seed --class=Mchljams\\TravelLog\\Database\\Seeds\\TravelLogDatabaseSeeder
php artisan serve