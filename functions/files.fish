#! /usr/bin/fish

function files -d 'Start weechat with proper config dir'

    if test -z $argv
        command nautilus (pwd) ^ /dev/null &
        return 0
    else
        command nautilus $argv ^ /dev/null &
        return 0
    end

end

