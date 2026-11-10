# Pong

Two-player Pong made with Python's turtle module. The ball speeds up with every hit.

Built with Python while learning (part of my [PythonProject](https://github.com/kunal-dangi/PythonProject) 100-days journey).

**Controls:** right paddle ↑ / ↓, left paddle W / S.

## Download (macOS)

Grab **Pong.dmg** from the [latest release](https://github.com/kunal-dangi/pong-game/releases/latest), open it, and drag **Pong** into Applications.

The app isn't notarized by Apple, so the first launch will be blocked. Either right-click the app → **Open**, or run:

```bash
xattr -cr "/Applications/Pong.app"
```

Built for Apple Silicon (arm64) Macs.

## Run from source

```bash
pip install -r requirements.txt
python3 main.py
```

## Build the DMG yourself

```bash
pip install pyinstaller -r requirements.txt
./build.sh
```
