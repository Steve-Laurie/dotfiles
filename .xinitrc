. ~/.profile
xrdb -merge ~/.Xresources &
xautolock -time 25 -locker slock &
xset s off -dpms &
slstatus &
exec dwm
