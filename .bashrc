case $- in
*i*) ;;
*) return ;;
esac

export OSH='/home/thiago/.oh-my-bash'
OSH_THEME="nekonight_moon"
OMB_CASE_SENSITIVE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
JAVA_AWT_WM_NONREPARENTING=1
OMB_USE_SUDO=true

#plugins uteis

completions=(
  git
  composer
  ssh
)

aliases=(
  general
)

plugins=(
  git
  bashmarks
  colored-man-pages
)

source "$OSH"/oh-my-bash.sh

export PATH="/bin:/usr/local/bin:/usr/bin:/home/thiago/.cargo/bin"

#melhor secao

alias ls="eza -a --icons=always"
alias portage="sudo nvim /etc/portage/"
alias portage-updateN="sudo emerge -avgu --deep --newuse @world"
alias portage-updateC="sudo emerge -avgu --deep --changed-use @world"
alias portageI="sudo emerge -avg"
alias ff="pyfiglet  -f speed $(fastfetch -s os --format json | jq -r '.[0].result.name') | lolcat && echo && fastfetch -l none"
alias vi="nvim"
alias mci="sudo make clean install"
alias surfing="tabbed surf -e"
alias vencord="sh -c "$(curl -sS https://raw.githubusercontent.com/Vendicated/VencordInstaller/main/install.sh)""

#cores

RED_B='\e[1;91m'
GREEN_B='\e[1;92m'
YELLOW_B='\e[1;93m'
BLUE_B='\e[1;94m'
PURPLE_B='\e[1;95m'
CYAN_B='\e[1;96m'
WHITE_B='\e[1;97m'
RESET='\e[0m'

red() { echo -e "${RED_B}${1}${RESET}"; }
green() { echo -e "${GREEN_B}${1}${RESET}"; }
yellow() { echo -e "${YELLOW_B}${1}${RESET}"; }
blue() { echo -e "${BLUE_B}${1}${RESET}"; }
purple() { echo -e "${PURPLE_B}${1}${RESET}"; }
cyan() { echo -e "${CYAN_B}${1}${RESET}"; }
white() { echo -e "${WHITE_B}${1}${RESET}"; }
