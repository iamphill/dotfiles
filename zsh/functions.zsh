# Change to projects folder
code() {
  cd $PROJECTS/$1;
}
compctl -W ~/src -/ code
