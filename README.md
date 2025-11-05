
# H264-ACC-2-channels-converter

This project provides batch conversion scripts for H.264 video and AAC audio files, including tools for audio-only conversion. It includes easy installation and uninstallation scripts for managing symbolic links to the converter tools in `/usr/bin`.

## Features
- Batch conversion of video and audio files
- Audio-only conversion support
- Simple installation and uninstallation scripts
- Symbolic linking to `/usr/bin` for easy command-line access

## Installation

Run the install script to create symbolic links for all converter tools in `/usr/bin`:

```sh
chmod +x install.sh
./install.sh
```

> **Note:** The `install.sh` script will skip itself and `uninstall.sh` when creating links.

## Uninstallation

To remove the symbolic links created by the install script, run:

```sh
chmod +x uninstall.sh
./uninstall.sh
```

## Usage

After installation, you can run the converter tools from anywhere in your terminal, as they are linked in `/usr/bin`.

## Project Structure
- `batch-converter/` — Batch video and audio converter scripts
- `batch-converter-audio/` — Batch audio-only converter scripts
- `converter/` — Single file video/audio converter
- `converter-audio-only/` — Single file audio-only converter
- `install.sh` — Installs symbolic links to `/usr/bin`
- `uninstall.sh` — Removes symbolic links from `/usr/bin`

## Requirements
- Linux system
- Sudo privileges (for linking to `/usr/bin`)
- ffmpeg (for media conversion)
 - Working with ffmpeg version 6.1.1-3ubuntu5

## License
MIT
