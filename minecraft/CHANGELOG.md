# Changelog

## [1.0.1] - 2025-12-13

### Changed
- Restructured as proper Home Assistant add-on repository
- Improved documentation with detailed configuration examples
- Updated to use build.json for proper image configuration
- Added bashio integration with fallback support for better compatibility

### Added
- run.sh script for proper configuration handling
- Support for multiple server types (VANILLA, FABRIC, FORGE, PAPER, SPIGOT, PURPUR)
- server_type configuration option
- Configurable data_path and mods_path for flexible storage
- CHANGELOG.md for version tracking
- Logo instructions

### Fixed
- Fixed configuration mapping syntax
- Corrected environment variable handling
- Maintained original java_args configuration for JVM customization

## [1.0.0] - Initial Release

### Added
- Initial Minecraft Server add-on with Fabric support
