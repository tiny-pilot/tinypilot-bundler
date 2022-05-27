# TinyPilot Bundler

## Run Build via Docker

Create build environment:

```bash
docker build -t tinypilot-bundler .
```

Run build:

```bash
docker run --rm -it -v "${PWD}/out":/out tinypilot-bundler
```

## Testing Procedure (Development)

(Note: this is currently only for installing TinyPilot Community on a Voyager device.)

1. Run the build (see instructions above)
2. Upload `out/tinypilot.tar` and `get-tinypilot.sh` to your device, e.g.:
	 ```bash
	 rsync out/tinypilot.tar get-tinypilot.sh root@raspberrypi:/root
	 ```
3. SSH into your device and run the installation:
   ```bash
   ssh root@raspberrypi
   cd /root
	 ./get-tinypilot.sh
	 ```
4. Reboot device
