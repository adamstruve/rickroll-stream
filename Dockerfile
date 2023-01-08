FROM ubuntu:20.04

RUN apt-get update && apt-get install -y \
    icecast2 \
    ffmpeg \
    curl

RUN curl -o /opt/jocofullinterview41.mp3 https://ia800605.us.archive.org/8/items/NeverGonnaGiveYouUp/jocofullinterview41.mp3

EXPOSE 8000

CMD service icecast2 start && ffmpeg -re -stream_loop -1 -i /opt/jocofullinterview41.mp3 -acodec libmp3lame -ab 128k -ar 44100 -content_type audio/mpeg -f mp3 icecast://source:hackme@0.0.0.0:8000/jocofullinterview41.mp3
