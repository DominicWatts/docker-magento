FROM php:5.6-apache

MAINTAINER Tomas Gerulaitis <tomas.gerulaitis@meanbee.com>

ENV PHP_EXT_APCU_VERSION "4.0.11"
include(`dockerfile/extensions.m4')
include(`dockerfile/memcached.m4')
include(`dockerfile/xdebug.m4')
include(`dockerfile/php-ini.m4')
include(`dockerfile/apache.m4')

ENV ION_CUBE_PHP_VERSION "5.6"
include(`dockerfile/ioncube-loader.m4')

include(`dockerfile/entrypoint.m4')
include(`dockerfile/cmd-apache.m4')
