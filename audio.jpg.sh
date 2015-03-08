#!/usr/bin/env bash

convert audio.jpg -depth 8 -size 1280x1180 rgb:/tmp/c.raw
dd if=/tmp/c.raw bs=2016000 count=1 of=/tmp/v.raw
dd if=/tmp/c.raw bs=2016000 skip=1 | ffmpeg -r 3.75 -pix_fmt monow -f rawvideo -s 160x120 -i /tmp/v.raw -f s8 -c:a pcm_s8 -ar 11025 -ac 1 -i -  -pix_fmt yuv420p -c:a pcm_s16le -c:v rawvideo -f matroska - | mpv -
