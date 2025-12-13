# Minecraft Server Add-on for Home Assistant

This add-on provides a Minecraft Java Edition server that runs within your Home Assistant environment. It supports various server types including Fabric, Forge, Paper, and more.

## Features

- **Multiple Server Types**: Supports Fabric, Forge, Paper, Spigot, and vanilla Minecraft
- **Version Selection**: Choose any Minecraft version
- **Persistent Data**: Server data is automatically stored in your Home Assistant config directory
- **Easy Configuration**: Simple options through the Home Assistant UI
- **Automatic EULA Acceptance**: The add-on handles EULA acceptance automatically

## Installation

1. Add this repository to your Home Assistant add-on store
2. Install the "Minecraft Server" add-on
3. Configure the add-on options
4. Start the add-on

## Configuration

Configure the add-on through the Home Assistant UI with these options:

### Option: `data_path`

Host path where server data will be stored (worlds, configs, etc.).

**Default**: `/config/minecraft/data`

**Example**: `/mnt/data/minecraft`

### Option: `mods_path`

Host path containing mod JAR files (for Fabric/Forge) or plugin JAR files (for Paper/Spigot).

**Default**: `/config/minecraft/mods`

**Example**: `/mnt/data/minecraft/mods`

### Option: `java_args`

JVM arguments for performance tuning and memory allocation.

**Default**: `-Xmx4096M -Xms4096M`

**Examples**:
- `-Xmx2048M -Xms2048M` - 2GB RAM
- `-Xmx4096M -Xms4096M` - 4GB RAM
- `-Xmx8192M -Xms8192M` - 8GB RAM

### Option: `minecraft_version`

The Minecraft version to run.

**Default**: `latest`

**Examples**:
- `latest` - Latest stable release
- `1.20.1` - Specific version
- `snapshot` - Latest snapshot

### Option: `server_type`

The type of Minecraft server to run.

**Default**: `FABRIC`

**Options**:
- `VANILLA` - Standard Minecraft server
- `FABRIC` - Fabric mod loader
- `FORGE` - Forge mod loader
- `PAPER` - Paper (optimized Bukkit)
- `SPIGOT` - Spigot (Bukkit)
- `PURPUR` - Purpur (Paper fork)

## Usage

1. Configure the data paths if you want to use custom locations
2. Start the add-on
3. Wait for the server to fully initialize (check the logs)
4. Connect to the server using your Home Assistant's IP address and port 25565
5. Server data (worlds, configs, etc.) will be stored in the configured `data_path`

## Adding Mods/Plugins

- For **Fabric**: Place mod JAR files in the directory specified by `mods_path`
- For **Forge**: Place mod JAR files in the directory specified by `mods_path`
- For **Paper/Spigot**: Place plugin JAR files in `data_path/plugins`

**Note**: The `mods_path` is specifically for Fabric/Forge mods. For Paper/Spigot plugins, use the `plugins` subdirectory within your `data_path`.

## Notes

- The add-on uses the excellent [itzg/minecraft-server](https://github.com/itzg/docker-minecraft-server) Docker image
- Server properties can be customized by editing `server.properties` in your configured `data_path`
- The EULA is automatically accepted by using this add-on
- Ensure the configured paths have appropriate permissions for the add-on to read/write
- Make sure your Home Assistant host has enough resources (CPU, RAM, disk space)

## Support

For issues specific to this add-on, please open an issue on the [repository](https://github.com/sr229/homeassistant-addons/issues).

For Minecraft server configuration help, see the [docker-minecraft-server documentation](https://github.com/itzg/docker-minecraft-server).