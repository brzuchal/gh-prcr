#!/usr/bin/env bash
export PHPRC=$(dirname "$0")
composer global require clue/phar-composer
rm $(basename $PWD)
composer install --prefer-dist
composer global exec phar-composer build $PWD $(basename $PWD)
