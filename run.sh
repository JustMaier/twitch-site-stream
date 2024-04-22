#!/bin/bash

# Install fake monitor
echo "[1/3] Installing fake monitor"
Xvfb :1 -screen 0 ${SCREEN_W}x${SCREEN_H}x16 &
sleep 1

# Start browser
echo "[2/3] Starting browser"
# Modify this line to open chromium full screen to a URL defined in the environment variable
DISPLAY=:1 google-chrome --no-sandbox --disable-gpu --disable-dev-shm-usage --noerrdialogs --disable-fre --no-default-browser-check --no-first-run --disable-infobars --kiosk --window-position=0,0 --window-size=${SCREEN_W},${SCREEN_H} ${SITE_URL} &
sleep 1

# Start the stream
echo "[3/3] Streaming"
./stream.sh
