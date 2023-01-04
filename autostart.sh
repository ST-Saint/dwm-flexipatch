run_once () {
    if ! pgrep -x ${1} > /dev/null
    then
        shift
        $@ &
    fi
}

run_once dwm_bar.sh $HOME/.dwm/dwm-bar/dwm_bar.sh
run_once dunst dunst
run_once picom picom
run_once volumeicon volumeicon
run_once ibus-daemon ibus-daemon -x -d
run_once nitrogen nitrogen -no-startup-id --restore
run_once flameshot flameshot
run_once netease-cloud-m netease-cloud-music
run_once WeChat.exe WeChat
run_once DiscordCanary discord-canary
run_once emacs emacs
run_once chrome google-chrome-stable
