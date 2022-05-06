#!/usr/bin/env python
from __future__ import unicode_literals
import os

# It is required that yt-dlp and ffmpeg is installed on your system.

url = input('Enter URL: ')

# Output can be changed

os.system('yt-dlp -x --audio-format m4a -o "%(title)s.%(ext)s" {}'.format(url))
