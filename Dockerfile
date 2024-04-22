FROM ubuntu:22.04

# Set ENV for headless apt
ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /opt/site-stream/

COPY xorg.conf /usr/share/X11/xorg.conf.d/

RUN apt update && apt upgrade -y
RUN apt install -y --no-install-recommends software-properties-common gpg-agent wget
RUN apt install -y --no-install-recommends tzdata lightdm xvfb ffmpeg
RUN wget -q https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN apt-get install -y ./google-chrome-stable_current_amd64.deb

COPY run.sh ./
COPY stream.sh ./
RUN chmod +x ./*.sh

CMD ./run.sh
