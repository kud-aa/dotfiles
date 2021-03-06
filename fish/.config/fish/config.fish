## Fix for curses applications where terminal would not update 
## $COLUMNS and $LINES
set --unexport COLUMNS
set --unexport LINES

## Bold colors
set fish_color_command ccccc --bold
set fish_color_error eb6f92
set fish_color_quote 31748f
set fish_color_cwd f6c177 --bold
set fish_color_param c4a7e7

## Aliases
alias l "ls -lh --group-directories-first --color=always"
alias la "ls -a --color=always"
alias ll "ls -alh --color=always"
alias grep "grep --color=auto -i"
alias clone "git clone --depth 1"
alias ra "ranger"
alias ipa "ip -c a"

alias euses "equery uses"
alias cp "cp -iv"
alias mv "mv -iv"
alias rm "rm -v"

alias librespot "/home/overaid/github/librespot/target/release/librespot -n Ono-Sendai"
alias 'commit'='set -x GPG_TTY (tty); git commit -Sv'
alias gitlog "PAGER=less git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"

## Keybinding
set fish_key_bindings fish_vi_key_bindings

## Locale
set -x LC_ALL en_US.utf8
set -x EDITOR /usr/bin/nvim
set -x BROWSER /usr/bin/chromium
set -x TERM xterm-256color

## Start X at login
if status --is-login
  if test -z "$DISPLAY" -a $XDG_VTNR = 1
    exec startx
  end
end
