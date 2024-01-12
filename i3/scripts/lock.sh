#!/bin/bash
revert() {
  rm /tmp/*screen*.png
  xset dpms 0 0 0
}
download_cover() {
    if [ ! -f /tmp/i3lock_cover.png ]; then
        wget https://i.imgur.com/s8la6nE.png
        mv s8la6nE.png /tmp/i3lock_cover.png
    fi
}
trap revert HUP INT TERM
xset +dpms dpms 0 0 5
scrot -d 1 /tmp/locking_screen.png
convert -blur 0x8 /tmp/locking_screen.png /tmp/screen_blur.png
download_cover
convert -composite /tmp/screen_blur.png /tmp/i3lock_cover.png -gravity South -geometry -20x1200 /tmp/screen.png
i3lock -i /tmp/screen.png
revert
