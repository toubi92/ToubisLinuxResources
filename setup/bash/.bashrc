#oh-my-bash (comments see ./bash/oh-my-bash/templates/bashrc.osh-template)
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
export OSH=$SCRIPT_DIR/oh-my-bash
OSH_THEME="agnoster"
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
)
source $SCRIPT_DIR/oh-my-bash/oh-my-bash.sh
