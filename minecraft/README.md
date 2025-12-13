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

### Option: `java_memory`

The amount of memory to allocate to the Minecraft server.

**Default**: `4G`

**Examples**:
- `2G` - 2 gigabytes
- `4G` - 4 gigabytes
- `8G` - 8 gigabytes

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

1. Start the add-on
2. Wait for the server to fully initialize (check the logs)
3. Connect to the server using your Home Assistant's IP address and port 25565
4. Server data (worlds, configs, mods) will be stored in `/config/minecraft/data`

## Adding Mods/Plugins

- For **Fabric**: Place mod JAR files in `/config/minecraft/data/mods`
- For **Forge**: Place mod JAR files in `/config/minecraft/data/mods`
- For **Paper/Spigot**: Place plugin JAR files in `/config/minecraft/data/plugins`

## Notes

- The add-on uses the excellent [itzg/minecraft-server](https://github.com/itzg/docker-minecraft-server) Docker image
- Server properties can be customized by editing `/config/minecraft/data/server.properties`
- The EULA is automatically accepted by using this add-on
- Make sure your Home Assistant host has enough resources (CPU, RAM, disk space)

## Support

For issues specific to this add-on, please open an issue on the [repository](https://github.com/sr229/homeassistant-addons/issues).

For Minecraft server configuration help, see the [docker-minecraft-server documentation](https://github.com/itzg/docker-minecraft-server).