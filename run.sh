#!/usr/bin/with-contenv bashio

HASS_URL=$(bashio::config 'hass_url') 
export HASS_URL
export HASS_PORT=$(bashio::core.port)
export EXPOSED_PORT=$(bashio::addon.port "8099/tcp")

echo "Starting Fusion..."

node server.js
