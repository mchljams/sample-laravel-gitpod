#!/bin/bash

composer create-project --prefer-dist laravel/laravel laravel
composer config repositories.repo-name vcs https://github.com/mchljams/travellog.git
composer require mchljams/travellog:dev-master