#!/bin/bash
set -e

# Clone the Dux_OS repo
git clone https://github.com/ducks-github/Dux_OS.git
cd Dux_OS

# Make sure the build script is executable
chmod +x build_duxos.sh

# Run the build script using default duxos.png (already inside repo)
sudo ./build_duxos.sh