function rm --wraps='rm'
  scmpuff exec --relative -- rm $argv
end
