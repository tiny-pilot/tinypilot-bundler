# TinyPilot Bundler

## Run Build via Docker

Create build environment:

```bash
docker build --tag tinypilot-bundler .
```

Run build:

```bash
docker run --rm -it \
  --volume "${PWD}/dist":/tinypilot-bundler/dist \
  tinypilot-bundler
```

## Testing Procedure (Development)

(Note: this is currently only for installing TinyPilot Community on a Voyager device.)

1. Run the build (see instructions above)
2. Upload `dist/tinypilot.tar` and `get-tinypilot.sh` to your device, e.g.:
   ```bash
   rsync dist/tinypilot.tar get-tinypilot.sh root@raspberrypi:/root
   ```
3. SSH into your device and run the installation:
   ```bash
   ssh root@raspberrypi
   cd /root
   ./get-tinypilot.sh
   ```
4. Reboot device
