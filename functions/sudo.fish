function sudo -d "If sudo is called with !! as argument it will execute the last command as root."
  if test "$argv" = !!
    eval command sudo $history[1]
  else
    command sudo $argv
  end
end
