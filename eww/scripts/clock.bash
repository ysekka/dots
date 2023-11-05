pong="$(eww ping)"

if [ $pong == "pong" ];
then
    toggle="$(eww get clock-toggle)"

    if [ $toggle == "false" ];
    then
        eww open clock
        eww update clock-toggle=true
    else
        eww close clock
        eww update clock-toggle=false
    fi
fi