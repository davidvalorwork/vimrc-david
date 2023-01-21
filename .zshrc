# Variables
actualizardiasynotas(){
  year=$(date '+%Y')
  month=$(date '+%m')
  day=$(date '+%d')
  init=`date +%H:%M`
  output=/dev/stdout
  exec 6>&1 # saves stdout
  exec > /dev/null  # redirect stdout to /dev/null
  exec 1>&6 6>&- # restore stdout
  cd ~/projects/notas
  ~/projects/notas/commit.sh & 
}
syncappgrapp(){
  # FOR WINDOWS
  cd ~/projects/gruposip/app-analytiko
  git pull
  start "Command Prompt.lnk" ionic build
  echo "Press enter when finish"
  read wai
  npx cap add android
  npx cap sync android
  cd android
  ./gradlew clean
  ./gradlew build
  cd ..
  rm -rf ../analytiko-app.apk
  echo "Upload apk to google drive"
  mv android/app/build/outputs/apk/debug/app-debug.apk ../analytiko-app.apk
  start ..
  start chrome https://drive.google.com/drive/u/0/folders/140UkiLAne-ryB0Tm0dG4CjmU_zdAUgAu
}
# 1. Keys for easy work
# 2. Global
# 3. Git
# 4. Notas
# 5. Geoselfie
# 6. Gruposip
# 7. Nautilus
# 8. Personal
# 9. Altyro
# 10. VSCODE
## Global use
alias t0='tmux -u attach-session -t 0'
alias cc='cat ~/x | clip.exe'
alias tscx='tsc x.ts && node x.js && rm x.js'
alias e=exit
alias b=bash
# alias v=vim
# alias v=code
alias v=nvim
alias cls=clear
alias z='v ~/.zshrc && zsh'
alias keywords='v ~/.zshrc && zsh'
alias cz='code ~/.zshrc'
alias h='htop'
alias vconf='vi ~/.vimrc'
alias vplug='vi ~/.vim/plugins.vim'
alias vplugc='vi ~/.vim/plugin-config.vim'
alias vmap='vi ~/.vim/maps.vim'
alias h='htop'
alias vimrcdav='cd ~/projects/vimrc-david'
alias updatezsh='cd ~/projects/vimrc-david && bash update-zsh.sh'
alias uz='cd ~/projects/vimrc-david && bash update-zsh.sh'
## Git
alias gcom='git add . && echo "Type commit message" && read commitMsj && git commit -m "$commitMsj" && git pull && git push'
alias gps='git push'
alias gpl='git pull'
alias ggu='git gui'
## Notas commands
alias createnotas='cd ~ && git clone git@github.com:davidvalorwork/notas.git'
alias c='cd ~/projects/notas && ~/projects/notas/commit.sh &'
alias not='actualizardiasynotas && cd ~/projects/notas '
alias cr='actualizardiasynotas && echo "Text your message for the crono" && read msj && cd ~/projects/notas && bash ~/projects/notas/crono.sh "$msj"'
alias nr='actualizardiasynotas && cd ~/projects/notas && v info/recordatorio.md'
alias nreg='actualizardiasynotas && cd ~/projects/notas && tail -34 info/recordatorio.md'
alias nrec='actualizardiasynotas && echo Type your comment to the file && read input && cd ~/projects/notas && echo ${year}-${month}-${day} ${init} - $input >> info/recordatorio.md '
alias nge='actualizardiasynotas && cd ~/projects/notas && v info/other/finanzas/programacion/geoselfie/actividades-por-dia.md'
alias ngeg='actualizardiasynotas && cd ~/projects/notas && tail -34 info/other/finanzas/programacion/geoselfie/actividades-por-dia.md'
alias ngec='actualizardiasynotas && echo Type your comment to the file && read input && cd ~/projects/notas && echo ${year}-${month}-${day} ${init} - $input >> info/other/finanzas/programacion/geoselfie/actividades-por-dia.md  && echo ${year}-${month}-${day} ${init} - $input >> $year/$month/$day.md'
alias notgeoc='cd ~/projects/notas && v info/other/finanzas/programacion/geoselfie/actividades-por-dia.md'
alias nga='actualizardiasynotas && cd ~/projects/notas && v info/gastos-mensuales.md'
alias nga='actualizardiasynotas && cd ~/projects/notas && v info/gastos-mensuales.md'
alias notre='actualizardiasynotas && cd ~/projects/notas && v info/recordatorio.md'
alias nim='cd ~/projects/notas && v info/other/finanzas/importInf.md'
alias notdad='cd ~/projects/notas && v info/other/finanzas/airtmdad.md'
alias ngr='cd ~/projects/notas && v info/other/finanzas/programacion/gruposip_casos.md'
alias ngrc='actualizardiasynotas && echo Type your comment to the file && read input && cd ~/projects/notas && echo ${year}-${month}-${day} ${init} - $input >> info/other/finanzas/programacion/gruposip_casos.md && echo ${year}-${month}-${day} ${init} - $input >> $year/$month/$day.md'
alias nor='cd ~/projects/notas && v info/organization_system.md'
alias kat2='v ~/projects/notas/info/other/social/sargin/kat2.md'
alias nd='year=$(date "+%Y") && month=$(date "+%m") && day=$(date "+%d") && cd ~/projects/notas && v $year/$month/$day.md'
alias ndc='read input  && year=$(date "+%Y") && month=$(date "+%m") && day=$(date "+%d") && cd ~/projects/notas && echo ${year}-${month}-${day} ${init} - $input >> $year/$month/$day.md'
alias ndg='year=$(date "+%Y") && month=$(date "+%m") && day=$(date "+%d") && cd ~/projects/notas && tail -34 $year/$month/$day.md'
alias notcar='v ~/projects/notas/info/carro.md'
alias notconse='v ~/projects/notas/info/other/finanzas/programacion/consejos.md'
alias notvim='v ~/projects/notas/info/other/finanzas/programacion/vim.md'
alias nbut='v ~/projects/notas/info/butterfly.md'
## Enter in repos Geoselfie
alias gea='cd ~/projects/geoselfie/geoselfie-github/AWS'
alias gelo='cd ~/projects/geoselfie/geoselfie-github/logs'
alias geb='cd ~/projects/geoselfie/geoselfie-github/Backend'
alias ges='cd ~/projects/geoselfie/geoselfie-github/Server'
alias gec='cd ~/projects/geoselfie/geoselfie-github/Console'
alias gus='cd ~/projects/geoselfie/geoselfie-github/Users'
alias gu='cd /home/geoselfie/Interface'
alias gupr='cd /home/geoselfie/Interface && sudo python3 remote.py'
alias get='cd ~/projects/geoselfie/geoselfie-github/Testend2end'
alias gel='cd ~/projects/geoselfie/geoselfie-github/Promotions-Lambda'
alias gen='sudo n 12 && nodemon index.js'
### Geoselfie commands
alias confsso='echo https://d-9767053cf1.awsapps.com/start && echo ap-southeast-2 && aws configure sso --profile david.valor-prod && echo https://d-9767053cf1.awsapps.com/start && echo ap-southeast-2'
alias confssos='echo https://d-9767053cf1.awsapps.com/start && echo ap-southeast-2 && aws configure sso --profile david.valor-shared && echo https://d-9767053cf1.awsapps.com/start && echo ap-southeast-2'
alias startu='cd /home/geoselfie/Interface && bash services/start-pm2.sh'
alias stopu='cd /home/geoselfie/Interface && bash services/stop-pm2.sh'
alias restartu='cd /home/geoselfie/Interface && bash services/pm2-restart.sh'
alias ulogremote='cd /home/geoselfie/Interface && code logs/remote.log'
alias ulogweb='cd /home/geoselfie/Interface && code logs/web_interface.log'
alias ulogconsole='cd /home/geoselfie/Interface && code logs/console.log'
alias uloguploadfiles='cd /home/geoselfie/Interface && code logs/upload_files.log'
alias stopall='cd ~ && bash stop-all-services.sh'
alias status='cd /home/geoselfie/Interface && bash services/status.sh'
alias restart='cd /home/geoselfie/Interface && bash services/restart.sh'
alias menu='cd ~/projects/geoselfie/geoselfie-github/AWS && bash menu.sh'
## Enter in repos Gruposip
alias graf='cd ~/projects/gruposip/analytiko_app/front'
alias grap='cd ~/projects/gruposip/app-analytiko'
alias nglimit='node --max_old_space_size=1100 ./node_modules/@angular/cli/bin/ng serve'
alias grab='cd ~/projects/gruposip/analytiko-backend'
alias grdeldb='cd ../scripts && bash drop-databases.sh V1su4l1z4c10nm3m0r1z && cd ../back'
alias grnode='nodemon app.js --prod'
alias grmss='systemctl start mssql-server'
alias grmsss='systemctl stop mssql-server'
alias graps=syncappgrapp
## Nautilus
alias dirimg='nautilus /home/davidvalorwork/Pictures'
alias dirdown='nautilus /home/davidvalorwork/Downloads'
alias dirvid='nautilus /home/davidvalorwork/Videos'
## Personal
alias rendervids='bash ~/projects/personal/personal-scripts/encode-upload-youtube-videos/handbrake.sh && start chrome "https://studio.youtube.com/channel/UCuOSwst3g-6msZuPPf9npnQ/videos/upload?d=ud&filter=%5B%5D&sort=%7B%22columnType%22%3A%22date%22%2C%22sortOrder%22%3A%22DESCENDING%22%7D" && cd "C:\Users\david\Videos\obs" && start ..'
alias downmanyvids='mkdir -p /home/davidvalorwork/Downloads/phone/vids && rm -rf /home/davidvalorwork/Downloads/phone/vids && mkdir -p ~/projects/personal/downloadVids/vids && cd ~/projects/personal/downloadVids && python3 ~/projects/personal/downloadVids/download.py && zip -r /home/davidvalorwork/Downloads/phone/vids ./vids'
alias personal='~/projects/personal/personal-scripts/downloadVids'
alias sendphone='cd /home/davidvalorwork/Downloads/ && bash sendphone.sh'
alias sidequest='cd "/home/davidvalorwork/Downloads/Carpetas David/Entretenimiento y otros/SideQuest-0.10.27" && ./sidequest'
## Altyro
alias altyro='cd ~/projects/altyro/altyro-new'
## VSCODE
alias cno='not && code .'
alias cgeoa='cd ~/projects/geoselfie/geoselfie-github/AWS && code .'
alias cgeob='cd ~/projects/geoselfie/geoselfie-github/Backend && code .'
alias cgeos='cd ~/projects/geoselfie/geoselfie-github/Server && code .'
alias cgeoc='cd ~/projects/geoselfie/geoselfie-github/Console && code .'
alias cgeous='cd ~/projects/geoselfie/geoselfie-github/Users && code .'
alias cgeou='cd /home/geoselfie/Interface && code .'
alias cgeot='cd ~/projects/geoselfie/geoselfie-github/Testend2end && code .'
alias cgeol='cd ~/projects/geoselfie/geoselfie-github/Promotions-Lambda && code .'
alias cgeonode='sudo n 12 && nodemon index.js && code .'

## SSH Config
eval `ssh-agent`
ssh-add ~/.ssh/david



### OTHER CONFIGS NOT IMPORTANT
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(
  git
  zsh-autosuggestions
)
source $ZSH/oh-my-zsh.sh
#alias v=openNvim
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

#export ANDROID_HOME=$HOME/Library/Android/sdk
#export PATH=$PATH:$ANDROID_HOME/emulator
#export PATH=$PATH:$ANDROID_HOME/tools
#export PATH=$PATH:$ANDROID_HOME/tools/bin
#export PATH=$PATH:$ANDROID_HOME/platform-tools
#export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64/
#export PATH=~/.local/bin:$PATH

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
#export PATH=”/root/.local/bin:/root/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/root/Library/Android/sdk/platform-tools/:/root/.fzf/bin:/root/.rvm/bin:/root/Library/Android/sdk/emulator:/root/Library/Android/sdk/tools:/root/Library/Android/sdk/tools/bin:/root/Library/Android/sdk/platform-tools:/root/Library/Android/sdk/platform-tools/:/root/.rvm/bin:/root/Library/Android/sdk/emulator:/root/Library/Android/sdk/tools:/root/Library/Android/sdk/tools/bin:/root/Library/Android/sdk/platform-tools:/opt/mssql-tools/bin”‘
#
export PATH="$PATH:/opt/mssql-tools/bin"
alias python3='python'
#source $HOME/.cargo/env
#export PATH=~/.local/bin:$PATH
#export ANDROID_HOME=$HOME/Android/Sdk
#export PATH=$PATH:$ANDROID_HOME/toolst
#export ANDROID_SDK_ROOT=/usr/lib/android-sdk
#export ANDROID_SDK_ROOT=/home/davidvalorwork/Android/Sdk
#export ANDROID_HOME=/home/davidvalorwork/Android/Sdk
#export ZSH_DISABLE_COMPFIX=true
#source /home/davidvalorwork/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# Load Angular CLI autocompletion.
#source <(ng completion script)
clear
echo "Bienvenido David Valor"
echo "Using zsh phone"
echo "Recuerda anotar y programar todo lo que haces"
echo "Estudia algoritmos con un algoritmo desde aqui"
