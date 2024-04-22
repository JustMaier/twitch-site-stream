#!/bin/bash

# Install fake monitor
echo "[1/3] Installing fake monitor"
Xvfb :1 -screen 0 1280x720x16 &
sleep 1

# Start browser
echo "[2/3] Starting browser"
# Modify this line to open chromium full screen to a URL defined in the environment variable
DISPLAY=:1 chromium-browser --noerrdialogs --disable-infobars --kiosk $SITE_URL &
sleep 1

# Start the stream
echo "[3/3] Streaming"
./stream.sh
