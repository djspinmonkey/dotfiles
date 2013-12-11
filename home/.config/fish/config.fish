. !/.config/fish/vi-mode.fish

function fish_user_keybindings # Deprecated
        vi_mode_insert
end
function fish_user_key_bindings
        vi_mode_insert
end

function fish_prompt -d "Write out the prompt"
        printf '%s@%s%s%s%s [%s]> ' (whoami) (hostname|cut -d . -f 1) (set_color $fish_color_cwd) (prompt_pwd) (set_color normal) $vi_mode
end

