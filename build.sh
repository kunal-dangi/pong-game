#!/bin/sh
# Builds dist/Pong.dmg. Needs: pip install pyinstaller -r requirements.txt
set -e
cd "$(dirname "$0")"
NAME="Pong"
pyinstaller --noconfirm --windowed --name "$NAME" --osx-bundle-identifier "io.github.kunal-dangi.pong-game" main.py
mkdir -p build/dmg && ln -sfh /Applications build/dmg/Applications
ditto "dist/$NAME.app" "build/dmg/$NAME.app"
hdiutil create -volname "$NAME" -srcfolder build/dmg -ov -format UDZO "dist/$NAME.dmg"
