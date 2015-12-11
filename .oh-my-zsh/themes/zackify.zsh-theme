
if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="blue"; fi
if [ $UID -eq 0 ]; then PROMPTCOLOR="red"; else PROMPTCOLOR="green"; fi
if [ $UID -eq 0 ]; then USERCOLOR="yellow"; else USERCOLOR="blue"; fi

# -zach- ~/.oh-my-zsh ➤ echo hi
#PROMPT='%{$fg[blue]%}-%{$reset_color%}%{$fg[red]%}%n%{$reset_color%}%{$fg[blue]%}- %{$reset_color%}%{$fg[yellow]%}%2~%{$reset_color%}%{$fg[$NCOLOR]%} ➤ %{$reset_color%}'

PROMPT='%{$fg[blue]%}(%{$reset_color%}%{$fg[$USERCOLOR]%}%n%{$reset_color%}%{$fg[blue]%}) %{$reset_color%}%{$fg[red]%}%M%{$fg[blue]%} %{$reset_color%}%{$fg[yellow]%}%2~%{$reset_color%}%{$fg[$NCOLOR]%} ➤ %{$fg[$PROMPTCOLOR]%}'

RPROMPT='%{$fg[red]%}(%{$fg[green]%}$(date +%H:%M:%S)%{$fg[blue]%}%p$(git_prompt_info)%{$fg[red]%})%{$fg[$PROMPTCOLOR]%}'

ZSH_THEME_GIT_PROMPT_PREFIX=" "
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# See http://geoff.greer.fm/lscolors/
export LSCOLORS="exfxcxdxbxbxbxbxbxbxbx"
export LS_COLORS="di=34;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=31;40:cd=31;40:su=31;40:sg=31;40:tw=31;40:ow=31;40:"
