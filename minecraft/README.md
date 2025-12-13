# Minecraft Server Addon for Home Assistant

This addon provides a Minecraft Java Edition server running with the Fabric mod loader. It allows you to easily host a Minecraft server within your Home Assistant environment.

## Features

- **Fabric Mod Loader**: Supports Fabric mods for extending Minecraft functionality.
- **Configurable Data Directory**: Specify a host path for storing server data (worlds, configs, etc.).
- **Mods Directory**: Mount a host directory containing mod JAR files to `/data/mods` in the container.
- **Java Arguments**: Customize JVM options for performance tuning.
- **Version Selection**: Choose the Minecraft version to run.

## Installation

1. Copy the `minecraft` directory to your Home Assistant addons directory (e.g., `/config/addons/`).
2. Restart Home Assistant.
3. Install and start the addon from the Supervisor panel.

## Configuration

The addon can be configured via the options in the Home Assistant UI:

- **data_path**: Host path where server data will be stored (e.g., `/mnt/data/minecraft`).
- **mods_path**: Host path containing Fabric mod JAR files (e.g., `/mnt/data/minecraft/mods`).
- **java_args**: JVM arguments (e.g., `-Xmx4096M -Xms4096M`).
- **minecraft_version**: Minecraft version (e.g., `1.20.1` or `latest`).

## Usage

- Place your Fabric mod JAR files in the directory specified by `mods_path`.
- The server data (worlds, server.properties, etc.) will be stored in `data_path`.
- Access the server at the IP of your Home Assistant instance on port 25565.

## Notes

- Ensure the host paths have appropriate permissions for the addon to read/write.
- The addon uses the `itzg/minecraft-server` Docker image.
- For more information on Fabric mods, visit the [Fabric website](https://fabricmc.net/).

## Support

For issues with the addon, check the [itzg/docker-minecraft-server repository](https://github.com/itzg/docker-minecraft-server).