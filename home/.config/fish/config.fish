source ~/.config/fish/vi-mode.fish
source ~/.config/fish/fish_prompt.fish

set fish_greeting ''
set PATH $PATH ~/bin
set EDITOR vim

alias vi "mvim"
alias be "bundle exec"

function fish_user_key_bindings
  vi_mode_insert
end

