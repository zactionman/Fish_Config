#! /usr/bin/fish

function touchoff -d 'toggle the touchpad off'

    synclient TouchpadOff=1 $argv

end
