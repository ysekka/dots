status () {
    [ $(cat /sys/class/net/w*/operstate) = down ] && echo "D" && exit
    echo "N"
}

name () {
    nmcli | grep "^wlo" | sed 's/\ connected\ to\ //g' | cut -d ':' -f2 | tr 'a-z' 'A-Z' | tr _ -
}

[ "$1" = "status" ] && status && exit
[ "$1" = "name" ] && name && exit