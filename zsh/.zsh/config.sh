export PASSWORD_STORE_GPG_OPTS='--no-throw-keyids'

[ -f ~/.config/up/up.sh ] && source ~/.config/up/up.sh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export RIPGREP_CONFIG_PATH=~/.rgrc

# Disables XON/XOFF flow control (C-s hanging terminal)
stty -ixon

export DOTNET_CLI_TELEMETRY_OPTOUT=1
