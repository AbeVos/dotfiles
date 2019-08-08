BLACK="\[\033[30m\]";
RED="\[\033[31m\]";
GREEN="\[\033[32m\]";
YELLOW="\[\033[33m\]";
BLUE="\[\033[34m\]";
MAGENTA="\[\033[35m\]";
CYAN="\[\033[36m\]";
WHITE="\[\033[37m\]";
NO_COLOR="\[\033[m\]";

BOLD="\[\033[01m\]";
RESET="\[\033[00m\]";

PS1="$MAGENTA"'$(basename "[$CONDA_DEFAULT_ENV]")'" $GREEN\u$RED$BOLD@$RESET$YELLOW\h$RED:$BLUE\w\a$YELLOW"'$(__git_ps1 " (%s)")'"$RED\$ $NO_COLOR"

export TERM='xterm-256color'
