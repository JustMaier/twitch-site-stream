<div align="center">

# twitch-site-stream

*A headless setup for streaming any website to Twitch. Without a monitor.*

</div>

## Usage

1. Clone this repo
2. Add your Twitch [stream key](https://www.twitch.tv/broadcast/dashboard/streamkey) to `compose.yaml`
3. Add your target URL to `compose.yaml`
4. Optionally, you may [set a server](https://github.com/tycrek/asciiquarium-stream/blob/master/stream.sh#L32) to use
5. Run `docker compose up`

## How does this work?

It's a bit complicated to explain so I'll break down the main components:

- a **fake monitor** is created by [xvfb](https://www.x.org/releases/X11R7.6/doc/man/man1/Xvfb.1.xhtml)
- a **terminal** is emulated with [xterm](https://invisible-island.net/xterm/)
- a **live stream** is handled by [ffmpeg](https://ffmpeg.org/)
- finally, **Chrome** is used to show the webpage

This project is heavily influenced by the [asciiquarium-stream](https://github.com/tycrek/asciiquarium-stream). Credit goes there for the heavy lifting/research.

### Helpful resources

Below is a collection of links that helped me get this working the first time around.

- [Add Fake Display when No Monitor is Plugged In (askubuntu.com)](https://askubuntu.com/questions/453109/add-fake-display-when-no-monitor-is-plugged-in/1111898#1111898)
- [Using FFMPEG to stream to Twitch.tv with desktop audio? (unix.stackexchange.com)](https://unix.stackexchange.com/questions/87107/using-ffmpeg-to-stream-to-twitch-tv-with-desktop-audio/195302#195302)
- [How do I list connected displays using the command line? (askubuntu.com)](https://askubuntu.com/questions/121014/how-do-i-list-connected-displays-using-the-command-line/121019#121019)
- [Live Video Transmuxing/Transcoding: FFmpeg vs TwitchTranscoder, Part I (blog.twitch.tv)](https://blog.twitch.tv/en/2017/10/10/live-video-transmuxing-transcoding-f-fmpeg-vs-twitch-transcoder-part-i-489c1c125f28/)
- [How To Stream To Twitch From The Command Line On Linux (addictivetips.com)](https://www.addictivetips.com/ubuntu-linux-tips/stream-to-twitch-command-line-linux/)
