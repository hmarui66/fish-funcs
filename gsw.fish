function gsw
    set selected (git br | peco | sed 's/[*| ]*//')
    test -z $selected; and return
    git co $selected
end
