# Changelog

## [1.0.1] - 2025-12-13

### Changed
- Restructured as proper Home Assistant add-on
- Simplified configuration options (java_memory, minecraft_version, server_type)
- Improved documentation with detailed configuration examples
- Updated to use build.json for proper image configuration
- Added bashio integration for better Home Assistant integration

### Added
- run.sh script for proper configuration handling
- Support for multiple server types (VANILLA, FABRIC, FORGE, PAPER, SPIGOT, PURPUR)
- Automatic data storage in /config/minecraft/data

### Fixed
- Fixed configuration mapping syntax
- Corrected environment variable handling

## [1.0.0] - Initial Release

### Added
- Initial Minecraft Server add-on with Fabric support
