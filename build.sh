#!/usr/bin/env bash
export PHPRC=$(dirname "$0")
composer global require clue/phar-composer
composer install --prefer-dist
rm gh-prcr
composer global exec phar-composer build $PWD $(basename $PWD)
