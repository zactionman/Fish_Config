#! /usr/bin/fish

function fish_right_prompt -d "Draw the right prompt!!!!!"

    set l_status $status

    if test $l_status = '0' 
        set right_stat "$color1:D"
    else
        set right_stat "$error:("
    end

    echo "$right_stat" "$normal"

end
