# TinyPilot Bundler

[![CircleCI](https://circleci.com/gh/tiny-pilot/tinypilot-bundler/tree/master.svg?style=svg&circle-token=59e2a0bc53eb91b3eb05688c0d0f7f30a3e235e2)](https://circleci.com/gh/tiny-pilot/tinypilot-bundler/tree/master)

> ### 🚧🚧🚧 WORK IN PROGRESS 🚧🚧🚧

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
