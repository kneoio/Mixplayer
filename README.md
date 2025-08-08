# Mixplayer

A Flutter audio player application that starts as a POC with screenshot functionality and evolves into a full-featured audio player.

## Features

### Current POC Features
- **Automatic Screenshot**: Takes a screenshot immediately when the app launches
- **Manual Screenshot**: Button to take screenshots on demand
- **Basic Audio Player**: Play, pause, stop audio files with progress tracking
- **File Picker**: Select audio files from device storage

### Planned Features
- Advanced audio controls (seek, volume, repeat, shuffle)
- Playlist management
- Audio visualization
- Equalizer
- Background playback
- Media notifications

## Dependencies

- `flutter`: Flutter SDK
- `screenshot`: For screenshot functionality
- `path_provider`: File system access
- `permission_handler`: Storage permissions
- `audioplayers`: Audio playback
- `file_picker`: File selection

## Setup

1. Ensure Flutter is installed and configured
2. Run `flutter pub get` to install dependencies
3. Connect a device or start an emulator
4. Run `flutter run` to launch the app

## Permissions

The app requires the following Android permissions:
- `READ_EXTERNAL_STORAGE`: To access audio files
- `WRITE_EXTERNAL_STORAGE`: To save screenshots
- `MANAGE_EXTERNAL_STORAGE`: For file management
- `INTERNET`: For potential future streaming features

## Usage

1. **Screenshot POC**: The app automatically takes a screenshot when launched and saves it to the app's documents directory
2. **Audio Player**: Tap "Select Audio File" to choose an audio file, then use play/pause controls
3. **Manual Screenshot**: Use the camera icon in the app bar to take additional screenshots

## Development Notes

- Uses camelCase naming convention throughout the project
- Follows Flutter best practices for state management
- Modular design for easy expansion to full audio player features
