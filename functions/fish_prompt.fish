#! /usr/bin/fish

function fish_prompt -d "Zach's attempt at writing a fish prompt"

    set last_status $status

    # Set colors and username once
    if not set -q -g fish_user
        set -g fish_user $USER
        set -g color1 (set_color green)
        set -g color2 (set_color -o green)
        set -g color3 (set_color blue)
        set -g color4 (set_color -o blue)
        set -g error (set_color red)
        set -g normal (set_color normal)

        # Configure __fish_git_prompt
        set -g __fish_git_prompt_showdirtystate 'yes'
        set -g __fish_git_prompt_showstagedstate 'yes'
        #set -g __fish_git_prompt_showupstream 'yes'
        set -g __fish_git_prompt_color_branch cyan
        set -g dirty_color (set_color yellow)
        set -g stage_color (set_color green)
        set -g __fish_git_prompt_char_dirtystate (echo -n "$dirty_color""dirty$normal")
        set -g __fish_git_prompt_char_stagedstate (echo -n "$stage_color""staged$normal")
        #set -g __fish_git_prompt_char_upstream_ahead 'ahead'
        #set -g __fish_git_prompt_char_upstream_behind 'behind'
    end

    if test $last_status -eq 0
        set prompt_stat "$normal$color1 [0]"
    else
        set prompt_stat "$normal$error [$last_status]"
    end

    # Output last part of PWD or ~ if in home
    function prompt_pwd -d "Create some part of the working direcotry"
        set -l current_dir (pwd)

        if test $current_dir = '/home/zachary'
            echo -n '~'
        else
            basename -z (pwd)
        end
    end

    echo -n -s "$color1" (date "+%H:%M ") "$color2" "$fish_user" "$normal" ":" "$color3" (prompt_pwd) "$normal"  (__fish_git_prompt) "$prompt_stat"  "$normal$color1" '> ' "$normal"

end
