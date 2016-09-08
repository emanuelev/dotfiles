#!/bin/sh -e

# Take a screenshot
scrot /tmp/screen_locked.png

# Pixellate it 10x
mogrify -scale 10% -scale 1000% /tmp/screen_locked.png

# Lock the screen
i3lock -i /tmp/screen_locked.png 

sleep 30; pgrep i3lock && xset dpms force off
