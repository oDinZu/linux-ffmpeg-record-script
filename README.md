# FFmpeg-Record-Script

A record-screen.sh that screen captures with FFmpeg using a hotkey e.g `WIN + R`.

## Depends On
* ffmpeg
* bash
* basic linux terminal skills

### Recommended Setup Dependencies
* xdpyinfo
* xwininfo

### Setup
1. `git clone https://github.com/oDinZu/linux-ffmpeg-record-script`
2. In your OS, setup the hotkey binds to `record start/stop ffmpeg screen recorder`.
3. set execute permissions on the record-screen.sh via `right-click >` `mark the box:` `Executable as Program` or with `chmod`.
4. run the script via `./record-screen.sh` or with hotkey binds e.g. `WIN+R`.
   
### Get screen information
* `xdpyinfo | grep "name"` Note: `$DISPLAY` should match the name from xdpyinfo. e.g. `:1`
### Get detailed window information about a specific screen window
* `xwininfo`
### Transforming .mpeg format into .gif (optional)
* `ffmpeg -i input.mp4 -vf "fps=10,split[s0][s1];[s0]palettegen[p];[s1][p]paletteuse" -loop -1 output.gif`

## Authors
* oDinZu WenKi

## License
* GPL-3.0
