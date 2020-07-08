function userinfo() {
    echo "Current username:" $USER
    echo "User home directory path:" $HOME
}

function ipinfo() {
    ip_var=`ifconfig en0 | grep "inet 19" | tr -s " " ":"| cut -f2 -d ":"`
    echo "Ip address: " $ip_var
}