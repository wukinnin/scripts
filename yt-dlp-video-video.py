#!/usr/bin/env python
from __future__ import unicode_literals
import os

# It is required that yt-dlp and ffmpeg is installed on your system.

url = input('Enter URL: ')

# Output can be changed

os.system('yt-dlp -f bestvideo[ext=mp4]+bestaudio[ext=m4a]/mp4 -o "%(title)s.%(ext)s" {}'.format(url))
