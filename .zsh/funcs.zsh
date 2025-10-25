# easy access to the projects directory
pj() {
  if [[ -z $1 ]]; then
    cd ~/projects/
    return
  fi
  dir=$(fd $1 ~/projects -d=4 -t=d | awk 'NR==1 {print}')
  cd $dir
}

# automatically activate python venvs
venv() {
  if [[ -f ".venv/bin/activate" ]]; then
    source .venv/bin/activate
  fi
}

precmd() { venv; }

# completions
compdef '_files -W ~/projects/' pj
