#!/usr/bin/with-contenv bash

# Get configuration from Home Assistant
JAVA_ARGS=$(bashio::config 'java_args')
MINECRAFT_VERSION=$(bashio::config 'minecraft_version')
SERVER_TYPE=$(bashio::config 'server_type')

# Set environment variables for the minecraft server
export EULA="TRUE"
export TYPE="${SERVER_TYPE}"
export JVM_OPTS="${JAVA_ARGS}"
export VERSION="${MINECRAFT_VERSION}"

# Log configuration
bashio::log.info "Starting Minecraft Server..."
bashio::log.info "Java Args: ${JAVA_ARGS}"
bashio::log.info "Minecraft Version: ${MINECRAFT_VERSION}"
bashio::log.info "Server Type: ${SERVER_TYPE}"

# Start the minecraft server
exec /start
