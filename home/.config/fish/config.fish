# source ~/.config/fish/vi-mode.fish
source ~/.config/fish/fish_prompt.fish

set fish_greeting ''
set PATH $PATH ~/bin
set EDITOR vim

alias vi "mvim"
alias be "bundle exec"

fish_vi_key_bindings

function fish_user_key_bindings
  # fish_vi_key_bindings
end

