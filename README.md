# FFmpeg-Record-Script

A script.sh that screen captures with FFmpeg using a hotkey e.g `WIN + R`.

### Setup
1. git clone https://github.com/oDinZu/linux-ffmpeg-record-script
2. In your OS, setup the hotkey binds to `record start/stop ffmpeg screen recorder`.
3. set execute permissions on the record-screen.sh via right-click > Check the box: `Executable as Program` or with chmod.
4. run the script via `./record-screen.sh` or with hotkey binds e.g. `WIN+R`.
   
### Get screen information
1. `xdpyinfo | grep "name"` Note: $DISPLAY should match the name. e.g. `:1`
### Get detailed window information about a specific screen window
1. `xwininfo`
### Transforming .mpeg format into .gif (optional)
1. ffmpeg -i input.mp4 -vf "fps=10,split[s0][s1];[s0]palettegen[p];[s1][p]paletteuse" -loop -1 output.gif
