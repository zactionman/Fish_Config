#! /usr/bin/fish

function touchon -d 'toggle the touchpad on'

    synclient TouchpadOff=0 $argv

end
