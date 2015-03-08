convert video.jpg rgb:- | ffmpeg -f rawvideo -r 7.5 -s 160x120 -pix_fmt monow -f rawvideo -i - -pix_fmt yuv420p -c:v rawvideo -f matroska - | mpv -
