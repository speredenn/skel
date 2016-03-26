# Disable bell
xset -b

case $1 in
    "lenimac15")
        echo "Xserver options set: lenimac15."
        # Set keyboard
        setxkbmap ch fr -model macintosh
        ;;
    "nozvezh")
        echo "Xserver options set: nozvezh."
        # Set keyboard
        setxkbmap fr
        ;;
    "annwvyr")
        echo "Xserver options set: annwvyn."
        # Set keyboard
        setxkbmap ch fr
        # Special keybindings
        xbindkeys
        ;;
    *)
        echo "Xserver options set: default."
        # Set keyboard
        setxkbmap ch fr
        ;;
esac

# Kill X with ctrl-alt-backspace
setxkbmap -option terminate:ctrl_alt_bksp

# Useful modifications of the keyboard layout
xmodmap ~/.Xmodmap

# set options
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# exec windows manager
case $2 in
    "i3")
        exec i3
        feh --bg-scale ~/pics/current-wallpaper.jpg
        ;;
    "awesome")
        exec awesome
        ;;
    "qtile")
        exec qtile
        ;;
esac
