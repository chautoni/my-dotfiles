##############################################################################
# Paths Configuration
##############################################################################
export PATH=/$HOME/.cargo/bin:/Applications/Postgres.app/Contents/Versions/latest/bin:/Applications/Postgres.app/Contents/Versions/latest/lib:/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH;
export HOMEBREW_CELLAR="/opt/homebrew/Cellar";
export HOMEBREW_REPOSITORY="/opt/homebrew";
export MANPATH="/opt/homebrew/share/man${MANPATH+:$MANPATH}:";
export INFOPATH="/opt/homebrew/share/info:${INFOPATH:-}";
export FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
##############################################################################
# History Configuration
#############################################################################
HISTSIZE=500               #How many lines of history to keep in memory
HISTFILE=~/.zsh_history     #Where to save history to disk
SAVEHIST=500               #Number of history entries to save to disk

setopt hist_expire_dups_first # delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups       # ignore duplicated commands history list
setopt hist_ignore_space      # ignore commands that start with space
setopt hist_verify            # show command with history expansion to user before running it
setopt inc_append_history     # add commands to HISTFILE in order of execution
setopt share_history          # share command history data

# ##############################################################################
# # Compinit lazy loading
# ##############################################################################
autoload -Uz compinit
if [ $(date +'%j') != $(stat -f '%Sm' -t '%j' ~/.zcompdump) ]; then
  compinit
else
  compinit -C
fi
##############################################################################
# Alias Configuration
##############################################################################
alias g='git'
alias be='bundle exec'
alias rc='bin/rails console'
alias rs='bin/rails server'
alias sc='bin/cucumber'
alias sr='bin/rspec'
##############################################################################
# Sourcing Configuration
##############################################################################
source ~/.config/zr.zsh
source ~/.fzf.zsh
_evalcache starship init zsh
_evalcache mise activate zsh
_evalcache zoxide init zsh
_evalcache atuin init zsh

export FZF_DEFAULT_OPTS="
--layout=reverse
--info=inline
--prompt='∼ ' --pointer='▶' --marker='✓'
--preview-window=:hidden
--preview '([[ -f {} ]] && (bat --style=numbers --color=always {} || cat {})) || ([[ -d {} ]] && (tree -C -L 1 {} | less)) || echo {} 2> /dev/null | head -100'
--bind '?:toggle-preview'
--color=dark
--color=fg:-1,bg:-1,hl:#5fff87,fg+:-1,bg+:-1,hl+:#ffaf5f
--color=info:#af87ff,prompt:#5fff87,pointer:#ff87d7,marker:#ff87d7,spinner:#ff87d7"
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/*"'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
alias cat='bat'
alias ls='eza -l --group-directories-first --color=auto --no-permissions --no-user'
alias ll='eza -lahF --group-directories-first --color=auto'
