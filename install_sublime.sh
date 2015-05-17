#!/bin/bash

set -e

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

SUBLIME_CONFIG_DIR="$HOME/Library/Application Support/Sublime Text 3/Packages/User"
if [ -d "$SUBLIME_CONFIG_DIR" ]; then
  ln -sf "$SCRIPT_DIR/sublime/Package Control.sublime-settings" "$SUBLIME_CONFIG_DIR/Package Control.sublime-settings"
  ln -sf "$SCRIPT_DIR/sublime/Preferences.sublime-settings" "$SUBLIME_CONFIG_DIR/Preferences.sublime-settings"
  ln -sf "$SCRIPT_DIR/sublime/RSpec.sublime-build" "$SUBLIME_CONFIG_DIR/RSpec.sublime-build"
fi