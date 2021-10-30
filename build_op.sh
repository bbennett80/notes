#!/bin/bash
pip uninstall scons &&
cd ~ &&
git clone --recurse-submodules https://github.com/commaai/openpilot.git &&
cd openpilot &&
./tools/mac_setup.sh &&
source /Users/*user*/.zshrc &&
scons -j$(nproc)
