#! /usr/bin/fish

function weechat -d 'Start weechat with proper config dir'

    command weechat -d ~/.config/weechat/ $argv

end

