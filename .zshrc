# Keys for easy work
# Global
# Git
# Notas
# Geoselfie
# Gruposip
# Nautilus
# Personal
## Global use
alias e=exit
alias cls=clear
alias n="bash ../scripts/deploy-ubuntu-apache.sh"
alias z='vi ~/.zshrc && zsh'
alias h='htop'
alias vconf='vi ~/.vimrc'
alias h='htop'
alias vimrcdavid='cd ~/projects/vimrc-david && v'
alias savezsh='cd ~/projects/vimrc-david && bash update-zsh.sh'
## Git
alias gcom='git add . && echo "Type commit message" && read commitMsj && git commit -m "$commitMsj" && git pull && git push'
## Notas commands
alias createnotas='cd ~ && git clone git@github.com:davidvalorwork/notas.git'
alias c=./commit.sh
alias not='cd ~/projects/notas '
alias cr='echo "Text your message for the crono" && read msj && bash ~/projects/notas/crono.sh "$msj"'
alias notgeo='cd ~/projects/notas && v info/other/finanzas/programacion/geoselfie/actividades-por-dia.md'
alias notgastos='cd ~/projects/notas && v info/gastos-mensuales.md'
alias notrecor='cd ~/projects/notas && v info/recordatorio.md'
alias notimport='cd ~/projects/notas && v info/other/finanzas/importInf.md'
alias notdad='cd ~/projects/notas && v info/other/finanzas/airtmdad.md'
alias notgr='cd ~/projects/notas && v info/other/finanzas/programacion/gruposip_casos.md'
alias notorg='cd ~/projects/notas && v info/organization_system.md'
alias kat2='v ~/projects/notas/info/other/social/sargin/kat2.md'
## Enter in repos Geoselfie
alias geou='cd /home/geoselfie/Interface'
alias geob='cd ~/projects/geoselfie/geoselfie-github/Backend'
alias geos='cd ~/projects/geoselfie/geoselfie-github/Server'
alias geoc='cd ~/projects/geoselfie/geoselfie-github/Console'
alias geous='cd ~/projects/geoselfie/geoselfie-github/Users'
alias geoa='cd ~/projects/geoselfie/geoselfie-github/AWS'
alias geol='cd ~/projects/geoselfie/geoselfie-github/lambda-promotions'
alias geonode='sudo n 12 && nodemon index.js'
### Geoselfie commands
alias start='cd /home/geoselfie/Interface && bash services/start.sh'
alias stop='cd /home/geoselfie/Interface && bash services/stop.sh'
alias status='cd /home/geoselfie/Interface && bash services/status.sh'
alias restart='cd /home/geoselfie/Interface && bash services/restart.sh'
alias menu='cd ~/projects/geoselfie/geoselfie-github/AWS && bash menu.sh'
## Enter in repos Gruposip
alias graf='cd ~/projects/gruposip/_analytiko/front'
alias nglimit='node --max_old_space_size=1100 ./node_modules/@angular/cli/bin/ng serve'
alias grab='cd ~/projects/gruposip/_analytiko/back'
alias grdeldb='cd ../scripts && bash drop-databases.sh V1su4l1z4c10nm3m0r1z && cd ../back'
alias grnode='nodemon app.js --prod'
alias grmss='systemctl start mssql-server'
alias grmsss='systemctl stop mssql-server'
## Nautilus
alias dirimg='nautilus /home/davidvalorwork/Pictures'
alias dirvid='nautilus /home/davidvalorwork/Videos'
## Personal
alias rendervids='bash ~/projects/personal/encode-upload-youtube-videos/handbrake.sh'
alias downmanyvids='mkdir -p /home/davidvalorwork/Downloads/phone/vids && rm -rf /home/davidvalorwork/Downloads/phone/vids && mkdir -p ~/projects/personal/downloadVids/vids && cd ~/projects/personal/downloadVids && python3 ~/projects/personal/downloadVids/download.py && zip -r /home/davidvalorwork/Downloads/phone/vids ./vids'
alias sendphone='cd /home/davidvalorwork/Downloads/ && bash sendphone.sh'
alias sidequest='cd "/home/davidvalorwork/Downloads/Carpetas David/Entretenimiento y otros/SideQuest-0.10.27" && ./sidequest'




### OTHER CONFIGS NOT IMPORTANT

typeset -g POWERLEVEL9K_INSTANT_PROMPT=off
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
#if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
#fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  git
  zsh-syntax-highlightingh
  zsh-autosuggestions
)
source /home/davidvalorwork/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH/oh-my-zsh.sh
alias v=openNvim
# NVM configuration
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"

# Android studio adb
export PATH=$PATH:~/Library/Android/sdk/platform-tools/

if [ -f ~/.myenvs ]; then
    source ~/.myenvs
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

function openNvim {
  if [ $# -eq 0 ]; then
    nvim ./
  else
    nvim $1
  fi
}

export FZF_DEFAULT_COMMAND='ag -g ""'

# export PATH="$HOME/.fastlane/bin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export GIT_EDITOR=nvim
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64/
export PATH=~/.local/bin:$PATH

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export PATH=”/root/.local/bin:/root/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/root/Library/Android/sdk/platform-tools/:/root/.fzf/bin:/root/.rvm/bin:/root/Library/Android/sdk/emulator:/root/Library/Android/sdk/tools:/root/Library/Android/sdk/tools/bin:/root/Library/Android/sdk/platform-tools:/root/Library/Android/sdk/platform-tools/:/root/.rvm/bin:/root/Library/Android/sdk/emulator:/root/Library/Android/sdk/tools:/root/Library/Android/sdk/tools/bin:/root/Library/Android/sdk/platform-tools:/opt/mssql-tools/bin”‘

alias b=bash
alias v=nvim
export PATH="$PATH:/opt/mssql-tools/bin"
source $HOME/.cargo/env
export PATH=~/.local/bin:$PATH
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/toolst
export ANDROID_SDK_ROOT=/usr/lib/android-sdk
export ANDROID_SDK_ROOT=/home/davidvalorwork/Android/Sdk
export ANDROID_HOME=/home/davidvalorwork/Android/Sdk
export ZSH_DISABLE_COMPFIX=true
