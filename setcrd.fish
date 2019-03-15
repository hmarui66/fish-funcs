function setcrd
    test -d $HOME/.credential_cache; or mkdir $HOME/.credential_cache
    set cnt (count $argv)
    echo $argv[2] >$HOME/.credential_cache/$argv[1]
end
