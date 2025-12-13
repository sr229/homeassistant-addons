#!/usr/bin/with-contenv bashio

# Get configuration from Home Assistant
JAVA_MEMORY=$(bashio::config 'java_memory')
MINECRAFT_VERSION=$(bashio::config 'minecraft_version')
SERVER_TYPE=$(bashio::config 'server_type')

# Set environment variables for the minecraft server
export EULA="TRUE"
export TYPE="${SERVER_TYPE}"
export MEMORY="${JAVA_MEMORY}"
export VERSION="${MINECRAFT_VERSION}"

# Log configuration
bashio::log.info "Starting Minecraft Server..."
bashio::log.info "Memory: ${JAVA_MEMORY}"
bashio::log.info "Minecraft Version: ${MINECRAFT_VERSION}"
bashio::log.info "Server Type: ${SERVER_TYPE}"

# Start the minecraft server
exec /start
