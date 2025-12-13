#!/bin/bash
set -e

# Default values
DEFAULT_JAVA_ARGS="-Xmx4096M -Xms4096M"
DEFAULT_MINECRAFT_VERSION="latest"
DEFAULT_SERVER_TYPE="FABRIC"

# Load bashio if available (for Home Assistant integration)
if command -v bashio &> /dev/null; then
    # Get configuration from Home Assistant with validation
    JAVA_ARGS=$(bashio::config 'java_args' "${DEFAULT_JAVA_ARGS}")
    MINECRAFT_VERSION=$(bashio::config 'minecraft_version' "${DEFAULT_MINECRAFT_VERSION}")
    SERVER_TYPE=$(bashio::config 'server_type' "${DEFAULT_SERVER_TYPE}")
    
    # Validate that we got values
    JAVA_ARGS="${JAVA_ARGS:-${DEFAULT_JAVA_ARGS}}"
    MINECRAFT_VERSION="${MINECRAFT_VERSION:-${DEFAULT_MINECRAFT_VERSION}}"
    SERVER_TYPE="${SERVER_TYPE:-${DEFAULT_SERVER_TYPE}}"

    # Log configuration
    bashio::log.info "Starting Minecraft Server..."
    bashio::log.info "Java Args: ${JAVA_ARGS}"
    bashio::log.info "Minecraft Version: ${MINECRAFT_VERSION}"
    bashio::log.info "Server Type: ${SERVER_TYPE}"
else
    # Fallback to environment variables or defaults
    JAVA_ARGS="${JAVA_ARGS:-${DEFAULT_JAVA_ARGS}}"
    MINECRAFT_VERSION="${MINECRAFT_VERSION:-${DEFAULT_MINECRAFT_VERSION}}"
    SERVER_TYPE="${SERVER_TYPE:-${DEFAULT_SERVER_TYPE}}"
    
    echo "Starting Minecraft Server..."
    echo "Java Args: ${JAVA_ARGS}"
    echo "Minecraft Version: ${MINECRAFT_VERSION}"
    echo "Server Type: ${SERVER_TYPE}"
fi

# Set environment variables for the minecraft server
export EULA="TRUE"
export TYPE="${SERVER_TYPE}"
export JVM_OPTS="${JAVA_ARGS}"
export VERSION="${MINECRAFT_VERSION}"

# Start the minecraft server
exec /start
