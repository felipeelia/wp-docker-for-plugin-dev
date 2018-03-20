#!/bin/bash

WP_PLUGINS="/var/www/html/wp-content/plugins"
DEV_PLUGINS="/var/www/html/plugins"
VENDOR_PLUGINS="/var/www/html/vendor/plugins"

if [ -d "$VENDOR_PLUGINS" ];
then
    find "$VENDOR_PLUGINS" \
        -maxdepth 1 \
        -mindepth 1 \
        -exec ln -sf {} $WP_PLUGINS \;
fi

if [ -d "$DEV_PLUGINS" ];
then
    find "$DEV_PLUGINS" \
        -maxdepth 1 \
        -mindepth 1 \
        -exec ln -sf {} $WP_PLUGINS \;
fi
